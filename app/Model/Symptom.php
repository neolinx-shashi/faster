<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Symptom extends Model
{
    protected $table = 'symptom';

    protected $primaryKey = 'symptom_id';

    protected $fillable = ['symptom_detail', 'patient_id'];

    public function patients() {
        return $this->belongsTo('App\Model\Patient');
    }
}
