<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Hospital extends Model
{
    protected $table = 'hospital';

    protected $primaryKey = 'hospital_id';

    protected $fillable = ['hospital_name', 'hospital_address', 'hospital_email', 'hospital_status'];
}
