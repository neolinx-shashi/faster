<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TokenController extends Controller
{
    public function getToken() {
        echo $token = csrf_token(); echo 'afdsfa';die;
    	return $token;
    }
}
