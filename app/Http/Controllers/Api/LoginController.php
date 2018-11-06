<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Paramedic;
use App\Model\Status;

class LoginController extends Controller
{
    public function getToken() {
        $token = csrf_token();
    	return $token;
    }

    public function checkLogin(Request $request) {
        $username = $request->get('email');
        $password = $request->get('password');
        $uuid = $request->get('uuid');

        $check = Paramedic::where('paramedic_email', $username)
                    ->where('paramedic_status', '1')
                    ->count();

        if ($check > 0) {
            $pass = Paramedic::where('paramedic_email', $username)
                    ->select('paramedic_password')
                    ->get();
            $stored_pass = $pass[0]->paramedic_password;
            $isOk = password_verify($password, $stored_pass);
            if ($isOk) {
                $checkstatus = Status::where('device_id', $uuid)->count();
                if ($checkstatus == 0) {
                    $ins = Status::insert(['device_id' => $uuid, 'status' => '1', 'email' => $username]);
                } else {
                    $update_status = Status::where('device_id', $uuid)->update(['status' => '1']);
                }
                
                return '1';
            } else {
                return '0';
            }
        } else {
            return '0';
        }
    }

    public function checkLoginStatus(Request $request) {
        $uuid = $request->get('uuid');
        $status = Status::where('device_id', $uuid)
                    ->select('status')
                    ->get();

        if (count($status) == 0) {
            return '0';
        } else {
            $stat = $status[0]->status;
            return $stat;
        }
    }

    public function logOut(Request $request) {
        $uuid = $request->get('uuid');
        $del = Status::where('device_id', $uuid)->delete();

        if ($del) {
            return '1';
        }
    }

    public function test() {
        return 'test';
    }
}
