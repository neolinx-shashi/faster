<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Model\Dashboard;
use App\Model\Patient;
use App\Model\Hospital;
use App\Model\Paramedic;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $type = Auth::user()->type;

        $total_hospital = Hospital::where('hospital_status', '1')->count();
        $total_paramedic = Paramedic::where('paramedic_status', '1')->count();
       
        return view('home', compact('total_hospital', 'total_paramedic', 'type'));
    }

    /**
     * ajax
     */

    public function getTodayPatients() {
        $type = Auth::user()->type;
        $hid = Auth::user()->hospital_id;

        if ($type != 'superadmin') {
            $patients = Patient::leftJoin('examination', 'patient.patient_id', '=', 'examination.patient_id')
                    ->leftJoin('hospital', 'patient.hospital', '=', 'hospital.hospital_name')
                    ->leftJoin('paramedic', 'patient.paramedic_id', '=', 'paramedic.paramedic_id')
                    ->where('hospital.hospital_id', $hid)
                    ->whereDate('patient.created_at', date("Y-m-d"))
                    ->select('patient.patient_gender', 'patient.hospital', 'patient.viewed', 'patient.edited', 'patient.patient_age', DB::raw('SUM(examination.examination_score) as score'), 'paramedic.paramedic_name', 'patient.patient_id')
                    ->orderBy('patient.created_at', 'desc')
                    ->groupBy('patient.created_at')
                    ->get();
        } else {
            $patients = Patient::leftJoin('examination', 'patient.patient_id', '=', 'examination.patient_id')
                    ->leftJoin('paramedic', 'patient.paramedic_id', '=', 'paramedic.paramedic_id')
                    ->whereDate('patient.created_at', date("Y-m-d"))
                    ->select('patient.patient_gender', 'patient.hospital', 'patient.viewed', 'patient.edited', 'patient.patient_age', DB::raw('SUM(examination.examination_score) as score'), 'paramedic.paramedic_name', 'patient.patient_id')
                    ->orderBy('patient.created_at', 'desc')
                    ->groupBy('patient.created_at')
                    ->get();
        }

        return $patients;
    }

    public function getHospitalList() {
        $hospitals = Hospital::orderBy('hospital_name', 'asc')->get();
        return $hospitals;
    }

    public function getParamedicList() {
        $paramedic = Paramedic::orderBy('paramedic_name', 'asc')->get();
        return $paramedic;
    }

    public function totalPatients() {
        $type = Auth::user()->type;
        $hid = Auth::user()->hospital_id;

        if ($type != 'superadmin') {
            $total_patients = Patient::leftJoin('hospital', 'patient.hospital', '=', 'hospital.hospital_name')->where('hospital.hospital_id', $hid)->count();
        } else {
            $total_patients = Patient::count();
        }
        
        return $total_patients;
    }
    
}
