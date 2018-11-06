<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Patient extends Model
{
    protected $table = 'patient';

    protected $primaryKey = 'patient_id';

    protected $fillable = ['patient_age', 'patient_gender', 'hospital', 'arrival_time', 'paramedic_id'];

    public function symptoms() {
        return $this->hasMany('App\Model\Symptom');
    }
}
