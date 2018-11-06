<?php

namespace App\Http\Controllers\Back;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Hospital;
use App\Model\Hospitalnumber;

class HospitalController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $list = Hospital::orderBy('hospital_name', 'asc')
                ->paginate(20);

        $count = Hospital::count();
        $pageno = (isset($_GET['page'])) ? 20 * ($_GET['page'] - 1) : 0;
        $action = 'Add';
        $route = url('/hospital');

        return view('back.hospital.list', compact('list', 'count', 'pageno', 'route', 'action'));
    }

    public function store(Request $request) {
        $data = $request->all();

        $insert = Hospital::create($data);

        if ($insert) {
            $department = $data['department'];
            $number = $data['number'];
            $hid = $insert->hospital_id;

            for ($i = 0; $i < count($department); $i++) {
                Hospitalnumber::insert(['hospital_id' => $hid, 'department' => $department[$i], 'number' => $number[$i]]);
            }

            $message = "Data Save Success.";
            $stat = 1;
        } else {
            $message = "Data Save Failed.";
            $stat = 0;
        }
        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/hospital'));
    }

    public function edit($id) {
        $list = Hospital::orderBy('hospital_name', 'asc')
                ->paginate(20);
        $numbers = Hospitalnumber::where('hospital_id', $id)->get();

        $count = Hospital::count();
        $pageno = (isset($_GET['page'])) ? 20 * ($_GET['page'] - 1) : 0;
        $detail = Hospital::find($id);
        $action = 'Edit';
        $route = url('/hospital/' . $id);

        return view('back.hospital.list', compact('list', 'count', 'pageno', 'numbers', 'detail', 'route', 'action'));
    }

    public function update($id, Request $request) {
        $data = $request->all();
        $row = Hospital::find($id);
        $update = $row->fill($data)->save();

        if ($update) {
            $department = $data['department'];
            $number = $data['number'];
            Hospitalnumber::where('hospital_id', $id)->delete();

            for ($i = 0; $i < count($department); $i++) {
                if ($department[$i] != '')
                    Hospitalnumber::insert(['hospital_id' => $id, 'department' => $department[$i], 'number' => $number[$i]]);
            }
            $message = 'Data Update Success.';
            $stat = 1;
        } else {
            $message = 'Data Update Failed.';
            $stat = 0;
        }

        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/hospital'));
    }

    public function destroy($id, Request $request) {
        $delete = Hospital::where('hospital_id', $id)->delete();

        if ($delete) {
            Hospitalnumber::where('hospital_id', $id)->delete();
            $message = 'Data Deleted Success.';
            $stat = 1;
        } else {
            $message = 'Data Delete Failed.';
            $stat = 0;
        }

        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/hospital'));
    }

    public function status($id, $stat, Request $request) {
        $status = ($stat == '1') ? '0' : '1';
        $update = Hospital::where('hospital_id', $id)
                    ->update(['hospital_status' => $status]);

    if ($update) {
        $message = 'Status Changed Successfully.';
        $stat = 1;
    } else {
        $message = 'Status Change Failed.';
        $stat = 0;
    }
            
        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/hospital'));
    }
}
