<?php

namespace App\Http\Controllers\Back;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Admin;
use App\Model\Hospital;

class AdminController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $list = Admin::leftJoin('hospital', 'users.hospital_id', '=', 'hospital.hospital_id')->where('users.type', '!=', 'superadmin')->orderBy('users.name', 'asc')->paginate(20);
        $count = Admin::count();
        $pageno = (isset($_GET['page'])) ? 20 * ($_GET['page'] - 1) : 0;
        $route = url('/admin');
        $action = 'Add';
        $hospital = Hospital::where('hospital_status', '1')->orderBy('hospital_name', 'asc')->get();

        return view('back.admin.list', compact('list', 'count', 'pageno', 'route', 'action', 'hospital'));
    }

    public function store(Request $request) {
        $data = $request->all();
        $data['password'] = bcrypt($data['password']);

        $insert = Admin::create($data);

        if ($insert) {
            $message = "Data Save Success.";
            $stat = 1;
        } else {
            $message = "Data Save Failed.";
            $stat = 0;
        }
        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/admin'));
    }

    public function edit($id) {
        $list = Admin::leftJoin('hospital', 'users.hospital_id', '=', 'hospital.hospital_id')->where('users.type', '!=', 'superadmin')->orderBy('users.name', 'asc')->paginate(20);

        $count = Admin::count();
        $pageno = (isset($_GET['page'])) ? 20 * ($_GET['page'] - 1) : 0;
        $detail = Admin::find($id);
        $action = 'Edit';
        $route = url('/admin/' . $id);
        $hospital = Hospital::where('hospital_status', '1')->orderBy('hospital_name', 'asc')->get();

        return view('back.admin.list', compact('list', 'count', 'pageno', 'detail', 'route', 'action', 'hospital'));
    }

    public function update($id, Request $request) {
        $data = $request->all();
        if ($data['password'] == '') {
            unset($data['password']);
        } else {
            $data['password'] = bcrypt($data['password']);
        }
        
        $row = Admin::find($id);
        $update = $row->fill($data)->save();

        if ($update) {
            $message = 'Data Update Success.';
            $stat = 1;
        } else {
            $message = 'Data Update Failed.';
            $stat = 0;
        }

        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/admin'));
    }

    public function destroy($id, Request $request) {
        $delete = Admin::where('id', $id)->delete();

        if ($delete) {
            $message = 'Data Deleted Success.';
            $stat = 1;
        } else {
            $message = 'Data Delete Failed.';
            $stat = 0;
        }

        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/admin'));
    }
}
