<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Hospitalnumber extends Model
{
    protected $table = 'hospital_numbers';

    protected $primaryKey = 'h_id';

    protected $fillable = ['hospital_id', 'department', 'number'];
}
