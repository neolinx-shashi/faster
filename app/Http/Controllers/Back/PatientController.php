<?php

namespace App\Http\Controllers\Back;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Model\Patient;
use App\Model\Symptom;
use App\Model\Examination;
use App\Model\Hospital;

class PatientController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $type = Auth::user()->type;
        $hid = Auth::user()->hospital_id;
        $yesterday = Carbon::yesterday();

        if ($type != 'superadmin') {
            $list = Patient::leftJoin('paramedic', 'patient.paramedic_id', '=', 'paramedic.paramedic_id')
                ->leftJoin('hospital', 'patient.hospital', '=', 'hospital.hospital_name')
                ->leftJoin('symptom', 'patient.patient_id', '=', 'symptom.patient_id')
                ->select('*', 'symptom.updated_at as updated_time', 'patient.updated_at as created_time')
                ->where('hospital.hospital_id', $hid)
                ->where('patient.updated_at', '>=', $yesterday)
                ->where('patient.archived', '0')
                ->orderBy('patient.updated_at', 'desc')
                ->paginate(20);
        } else {
            $list = Patient::leftJoin('paramedic', 'patient.paramedic_id', '=', 'paramedic.paramedic_id')
            ->leftJoin('symptom', 'patient.patient_id', '=', 'symptom.patient_id')
                ->select('*', 'symptom.updated_at as updated_time', 'patient.updated_at as created_time')
                ->where('patient.updated_at', '>=', $yesterday)
                ->where('patient.archived', '0')
                ->orderBy('patient.updated_at', 'desc')
                ->paginate(20);
        }

        foreach ($list as $key => $val) {
            $cr_date = strtotime($val->updated_time);
            $date = Carbon::create(date("Y", $cr_date), date("m", $cr_date), date("d", $cr_date), date("H", $cr_date), date("i", $cr_date), date("s", $cr_date));
            $new_date = $date->addMinutes($val->arrival_time);
            $list[$key]->arrival_time = $new_date;
            $list[$key]->cr_time = date("H:i", $cr_date);
        }

        $count = Patient::where('updated_at', '>=', $yesterday)->where('patient.archived', '0')->count();
        $pageno = (isset($_GET['page'])) ? 20 * ($_GET['page'] - 1) : 0;
        $page = 'current';

        return view('back.patient.list', compact('list', 'count', 'pageno', 'page'));
    }

    public function archive() {
        $type = Auth::user()->type;
        $hid = Auth::user()->hospital_id;
        $yesterday = Carbon::yesterday();

        if ($type != 'superadmin') {
            $list = Patient::leftJoin('paramedic', 'patient.paramedic_id', '=', 'paramedic.paramedic_id')
                ->leftJoin('hospital', 'patient.hospital', '=', 'hospital.hospital_name')
                ->leftJoin('symptom', 'patient.patient_id', '=', 'symptom.patient_id')
                ->select('*', 'symptom.updated_at as updated_time', 'patient.updated_at as created_time')
                ->where('hospital.hospital_id', $hid)
                ->where('patient.updated_at', '<', $yesterday)
                ->orWhere('patient.archived', '1')
                ->orderBy('patient.updated_at', 'desc')
                ->paginate(20);
        } else {
            $list = Patient::leftJoin('paramedic', 'patient.paramedic_id', '=', 'paramedic.paramedic_id')
                ->leftJoin('symptom', 'patient.patient_id', '=', 'symptom.patient_id')
                ->select('*', 'symptom.updated_at as updated_time', 'patient.updated_at as created_time')
                ->where('patient.updated_at', '<', $yesterday)
                ->orWhere('patient.archived', '1')
                ->orderBy('patient.updated_at', 'desc')
                ->paginate(20);
        }

        foreach ($list as $key => $val) {
            $cr_date = strtotime($val->created_time);
            $date = Carbon::create(date("Y", $cr_date), date("m", $cr_date), date("d", $cr_date), date("H", $cr_date), date("i", $cr_date), date("s", $cr_date));
            $new_date = $date->addMinutes($val->arrival_time);
            $list[$key]->arrival_time = $new_date;
            $list[$key]->cr_time = date("H:i", $cr_date);
        }

        $count = Patient::where('updated_at', '<', $yesterday)->orWhere('patient.archived', '1')->count();
        $pageno = (isset($_GET['page'])) ? 20 * ($_GET['page'] - 1) : 0;
        $page = 'archive';

        return view('back.patient.list', compact('list', 'count', 'pageno', 'page'));
    }

    public function destroy($id, Request $request) {
        $delete = Patient::where('patient_id', $id)->delete();

        if ($delete) {
            $message = 'Data Deleted Success.';
            $stat = 1;
        } else {
            $message = 'Data Delete Failed.';
            $stat = 0;
        }

        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/patient'));
    }

    public function archived($id, Request $request) {
        $update = Patient::where('patient_id', $id)->update(['archived' => '1']);

        if ($update) {
            $message = 'Patient Archived Successfully.';
            $stat = 1;
        } else {
            $message = 'Patient Archived Failed.';
            $stat = 0;
        }

        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/patient'));
    }

    public function getSymptoms($id) {
        $symptoms = Symptom::where('patient_id', $id)
                    ->orderBy('created_at', 'asc')
                    ->get();
        $symptoms[0]['symptom_detail'] = unserialize( base64_decode( $symptoms[0]['symptom_detail'] ) );
        return $symptoms;
    }

    public function getExamination($id) {
        $examination = Examination::where('patient_id', $id)
                        ->orderBy('created_at', 'asc')
                        ->get();

        return $examination;
    }

    public function detail($id) {
        $detail = Patient::join('paramedic', 'patient.paramedic_id', '=', 'paramedic.paramedic_id')
                    ->where('patient.patient_id', $id)
                    ->get();
        return $detail[0];
    }

    public function newStatus($id) {
        $status = Patient::where('patient_id', $id)->update(['viewed' => '1']);
        return $status;
    }

    /* return estimated time */
    public function getArrivalTime($id, $time) {
        //$sql = Patient::find($id);
        $sql = Symptom::where('patient_id', $id)->first();
        $cr_date = strtotime($sql->updated_at);
        $date = Carbon::create(date("Y", $cr_date), date("m", $cr_date), date("d", $cr_date), date("H", $cr_date), date("i", $cr_date), date("s", $cr_date));
        $new_date = $date->addMinutes($time);
        $arrival_time = $new_date;
        $new_time = date("H:i", strtotime($arrival_time));
        return $new_time;
    }
}
