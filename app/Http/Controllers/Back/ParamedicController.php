<?php

namespace App\Http\Controllers\Back;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Model\Paramedic;

class ParamedicController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $list = Paramedic::orderBy('paramedic_name', 'asc')
                ->paginate(20);
        $count = Paramedic::count();
        $pageno = (isset($_GET['page'])) ? 20 * ($_GET['page'] - 1) : 0;
        $action = 'Add';
        $route = url('/paramedic');

        return view('back.paramedic.list', compact('list', 'count', 'action', 'route', 'pageno'));
    }

    public function store(Request $request) {
        $data = $request->all();
        $data['paramedic_password'] = bcrypt($data['paramedic_password']);

        $insert = Paramedic::create($data);

        if ($insert) {
            $message = "Data Save Success.";
            $stat = 1;
        } else {
            $message = "Data Save Failed.";
            $stat = 0;
        }
        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/paramedic'));
    }

    public function edit($id) {
        $list = Paramedic::orderBy('paramedic_name', 'asc')
                ->paginate(20);

        $count = Paramedic::count();
        $pageno = (isset($_GET['page'])) ? 20 * ($_GET['page'] - 1) : 0;
        $detail = Paramedic::find($id);
        $action = 'Edit';
        $route = url('/paramedic/' . $id);

        return view('back.paramedic.list', compact('list', 'count', 'pageno', 'detail', 'route', 'action'));
    }

    public function update($id, Request $request) {
        $data = $request->all();
        if ($data['paramedic_password'] == '') {
            unset($data['paramedic_password']);
        } else {
            $data['paramedic_password'] = bcrypt($data['paramedic_password']);
        }
        
        $row = Paramedic::find($id);
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
        return redirect(url('/paramedic'));
    }

    public function destroy($id, Request $request) {
        $delete = Paramedic::where('paramedic_id', $id)->delete();

        if ($delete) {
            $message = 'Data Deleted Success.';
            $stat = 1;
        } else {
            $message = 'Data Delete Failed.';
            $stat = 0;
        }

        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/paramedic'));
    }

    public function status($id, $stat, Request $request) {
        $status = ($stat == '1') ? '0' : '1';
        $update = Paramedic::where('paramedic_id', $id)
                    ->update(['paramedic_status' => $status]);

    if ($update) {
        $message = 'Status Changed Successfully.';
        $stat = 1;
    } else {
        $message = 'Status Change Failed.';
        $stat = 0;
    }
            
        $request->session()->flash('status', $message);
        $request->session()->flash('stat', $stat);
        return redirect(url('/paramedic'));
    }
}
