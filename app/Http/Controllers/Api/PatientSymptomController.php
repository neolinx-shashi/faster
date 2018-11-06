<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use App\Model\Patient;
use App\Model\Symptom;
use App\Model\Examination;
use App\Model\Paramedic;
use App\Model\Status;
use App\Model\Dummy;
use App\Model\Hospital;
use App\Model\Hospitalnumber;

class PatientSymptomController extends Controller
{
    public function index(Request $request) {
        $data = $request->all();

        /** get paramedic id */
        $device_id = $data['deviceID'];
        $qry = Status::leftJoin('paramedic', 'loginstatus.email', '=', 'paramedic.paramedic_email')
                    ->where('loginstatus.device_id', $device_id)
                    ->where('loginstatus.status', '1')
                    ->select('paramedic.paramedic_id')
                    ->get();
        if (count($qry) > 0)           
            $pID = $qry[0]->paramedic_id;
        else 
            $pID = 13;


        /* patient detail */
        $patient = Patient::create([
                'patient_gender' => $data['patient_gender'], 
                'patient_age' => $data['patient_age'],
                'hospital' => $data['target_clinic'],
                'arrival_time' => $data['time_to_hospital'],
                'paramedic_id' => $pID
            ]);
        $pid = $patient->patient_id;
            
        if ($pid != '') {
            /* score */
            $score_array = array(
                array(
                    'examination_exam' => 'Prüfung des Bewusstseins',
                    'examination_response' => $data['consciousness'],
                    'examination_score' => $data['consciousness_score'],
                    'patient_id' => $pid
                ),
                array(
                    'examination_exam' => 'Orientierung',
                    'examination_response' => $data['orientation'],
                    'examination_score' => $data['orientation_score'],
                    'patient_id' => $pid
                ),
                array(
                    'examination_exam' => 'Kooperation',
                    'examination_response' => $data['cooperation'],
                    'examination_score' => $data['cooperation_score'],
                    'patient_id' => $pid
                ),
                array(
                    'examination_exam' => 'Horizontale Blickbewegungen',
                    'examination_response' => $data['eye_movement'],
                    'examination_score' => $data['eye_movement_score'],
                    'patient_id' => $pid
                ),
                array(
                    'examination_exam' => 'Mimik',
                    'examination_response' => $data['facial_expression'],
                    'examination_score' => $data['facial_expression_score'],
                    'patient_id' => $pid
                ),
                array(
                    'examination_exam' => 'Armmotorik Rechts',
                    'examination_response' => $data['armmotorik_rechts'],
                    'examination_score' => $data['armmotorik_rechts_score'],
                    'patient_id' => $pid
                ),
                array(
                    'examination_exam' => 'Armmotorik Links',
                    'examination_response' => $data['armmotorik_links'],
                    'examination_score' => $data['armmotorik_links_score'],
                    'patient_id' => $pid
                ),
                array(
                    'examination_exam' => 'Beinmotorik Rechts',
                    'examination_response' => $data['motor_skill_rechts'],
                    'examination_score' => $data['motor_skill_rechts_score'],
                    'patient_id' => $pid
                ),
                array(
                    'examination_exam' => 'Beinmotorik Links',
                    'examination_response' => $data['motor_skill_links'],
                    'examination_score' => $data['motor_skill_links_score'],
                    'patient_id' => $pid
                ),
                array(
                    'examination_exam' => 'Sprache',
                    'examination_response' => $data['language'],
                    'examination_score' => $data['language_score'],
                    'patient_id' => $pid
                ),
                array(
                    'examination_exam' => 'Dysarthrie',
                    'examination_response' => $data['dysarthria'],
                    'examination_score' => $data['dysarthria_score'],
                    'patient_id' => $pid
                )
            );

            foreach ($score_array as $arr) {
                $exam_ins = Examination::create($arr);
            }


            if ($exam_ins) {
                /*
                * symptom detail
                */
                unset($data['deviceID'], $data['patient_gender'], $data['patient_age'], $data['consciousness'], $data['consciousness_score'], $data['orientation'], $data['orientation_score'], $data['cooperation'], $data['cooperation_score'], $data['eye_movement'], $data['eye_movement_score'], $data['facial_expression'], $data['facial_expression_score'], $data['armmotorik_rechts'], $data['armmotorik_rechts_score'], $data['armmotorik_links'], $data['armmotorik_links_score'], $data['motor_skill_rechts'], $data['motor_skill_rechts_score'], $data['motor_skill_links'], $data['motor_skill_links_score'], $data['language'], $data['language_score'], $data['dysarthria'], $data['dysarthria_score']);
            
                $symptoms = Symptom::insert([
                    'patient_id' => $pid,
                    'symptom_detail' => base64_encode(serialize($data)) /* unserialize( base64_decode( $string ) ); */
                ]);

                return $pid;
            }
            
            
        }
       
        
    }

    /* get hospital list */
    public function getHospitalList() {
        /*
        $list = Hospital::leftJoin('hospital_numbers', 'hospital.hospital_id', '=', 'hospital_numbers.hospital_id')
                ->select('hospital.hospital_name', 'hospital_numbers.department', 'hospital_numbers.number')
                ->orderBy('hospital.hospital_name')
                ->get();
                */
        
        $list = Hospital::orderBy('hospital_name')->select('hospital_name', 'hospital_id')->get();

        return $list;
    }

    public function getHospitalNumber($id) {
        $list = Hospitalnumber::where('hospital_id', $id)->get();
        return $list;
    }

    /* get paramedic id */
    public function getParamedicId($uuid) {
        $device_id = $uuid;
        $qry = Status::leftJoin('paramedic', 'loginstatus.email', '=', 'paramedic.paramedic_email')
                    ->where('loginstatus.device_id', $device_id)
                    ->where('loginstatus.status', '1')
                    ->select('paramedic.paramedic_id')
                    ->get();
        if (count($qry) > 0)           
            $pID = $qry[0]->paramedic_id;
        else 
            $pID = 13;

        return $pID;
    }

    /* get today's patient list */
    public function todayPatientList($pid) {
        $yesterday = Carbon::yesterday();
        $patient = Patient::where('created_at', '>', $yesterday)->where('paramedic_id', $pid)->orderBy('created_at', 'desc')->get();
        return $patient;
    }

    /* patient detail */
    public function getPatientDetail($id) {
        $detail = Patient::leftJoin('examination', 'patient.patient_id', '=', 'examination.patient_id')
                    ->leftJoin('symptom', 'patient.patient_id', '=', 'symptom.patient_id')
                    ->where('patient.patient_id', $id)
                    ->orderBy('patient.created_at', 'desc')
                    ->get();

        foreach ($detail as $key => $val) {
            $detail[$key]['symptom_detail'] = unserialize( base64_decode( $detail[$key]['symptom_detail'] ) );
        }
        return $detail;
    }

    /* total score */
    public function getTotalScore($id) {
        $score = Examination::where('patient_id', $id)->sum('examination_score');
        return $score;
    }

    /** edit patient detail */
    public function editPatient(Request $request) {
        $data = $request->all();

        /** patient id */
        $pat_id = $data['pat_id'];

        /** paramedic id */
        $pid = $data['pid'];


        /* patient detail */
        
        $patient_detail = array(
                'patient_gender' => $data['patient_gender'], 
                'patient_age' => $data['patient_age'],
                'hospital' => $data['target_clinic'],
                'arrival_time' => $data['time_to_hospital'],
                'edited' => '1',
                'viewed' => '0'
            );

        $update_patient = Patient::where('patient_id', $pat_id)
            ->update($patient_detail);
        
            /* score */
            $score_array = array(
                array(
                    'examination_exam' => 'Prüfung des Bewusstseins',
                    'examination_response' => $data['consciousness'],
                    'examination_score' => $data['consciousness_score'],
                    'patient_id' => $pat_id
                ),
                array(
                    'examination_exam' => 'Orientierung',
                    'examination_response' => $data['orientation'],
                    'examination_score' => $data['orientation_score'],
                    'patient_id' => $pat_id
                ),
                array(
                    'examination_exam' => 'Kooperation',
                    'examination_response' => $data['cooperation'],
                    'examination_score' => $data['cooperation_score'],
                    'patient_id' => $pat_id
                ),
                array(
                    'examination_exam' => 'Horizontale Blickbewegungen',
                    'examination_response' => $data['eye_movement'],
                    'examination_score' => $data['eye_movement_score'],
                    'patient_id' => $pat_id
                ),
                array(
                    'examination_exam' => 'Mimik',
                    'examination_response' => $data['facial_expression'],
                    'examination_score' => $data['facial_expression_score'],
                    'patient_id' => $pat_id
                ),
                array(
                    'examination_exam' => 'Armmotorik Rechts',
                    'examination_response' => $data['armmotorik_rechts'],
                    'examination_score' => $data['armmotorik_rechts_score'],
                    'patient_id' => $pat_id
                ),
                array(
                    'examination_exam' => 'Armmotorik Links',
                    'examination_response' => $data['armmotorik_links'],
                    'examination_score' => $data['armmotorik_links_score'],
                    'patient_id' => $pat_id
                ),
                array(
                    'examination_exam' => 'Beinmotorik Rechts',
                    'examination_response' => $data['motor_skill_rechts'],
                    'examination_score' => $data['motor_skill_rechts_score'],
                    'patient_id' => $pat_id
                ),
                array(
                    'examination_exam' => 'Beinmotorik Links',
                    'examination_response' => $data['motor_skill_links'],
                    'examination_score' => $data['motor_skill_links_score'],
                    'patient_id' => $pat_id
                ),
                array(
                    'examination_exam' => 'Sprache',
                    'examination_response' => $data['language'],
                    'examination_score' => $data['language_score'],
                    'patient_id' => $pat_id
                ),
                array(
                    'examination_exam' => 'Dysarthrie',
                    'examination_response' => $data['dysarthria'],
                    'examination_score' => $data['dysarthria_score'],
                    'patient_id' => $pat_id
                )
            );

            $delete = Examination::where('patient_id', $pat_id)->delete();
            foreach ($score_array as $arr) {
                $exam_ins = Examination::create($arr);
            }


            if ($exam_ins) {
                /*
                * symptom detail
                */
                unset($data['deviceID'], $data['patient_gender'], $data['patient_age'], $data['consciousness'], $data['consciousness_score'], $data['orientation'], $data['orientation_score'], $data['cooperation'], $data['cooperation_score'], $data['eye_movement'], $data['eye_movement_score'], $data['facial_expression'], $data['facial_expression_score'], $data['armmotorik_rechts'], $data['armmotorik_rechts_score'], $data['armmotorik_links'], $data['armmotorik_links_score'], $data['motor_skill_rechts'], $data['motor_skill_rechts_score'], $data['motor_skill_links'], $data['motor_skill_links_score'], $data['language'], $data['language_score'], $data['dysarthria'], $data['dysarthria_score'], $data['pid'], $data['pat_id']);
                
                /*
                $symptoms = Symptom::insert([
                    'patient_id' => $pid,
                    'symptom_detail' => base64_encode(serialize($data))
                ]);
                */
                $symptoms = Symptom::where('patient_id', $pat_id)
                            ->update(['symptom_detail' => base64_encode(serialize($data))]);

                return $pat_id;
            }
            
            
       
    }
}
