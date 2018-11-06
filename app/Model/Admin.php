<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    protected $table = 'users';

    protected $primaryKey = 'id';

    protected $fillable = ['name', 'email', 'password', 'type', 'hospital_id'];
}
