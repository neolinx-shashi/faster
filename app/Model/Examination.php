<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Examination extends Model
{
    protected $table = 'examination';

    protected $primaryKey = 'examination_id';

    protected $fillable = ['examination_exam', 'examination_response', 'examination_score', 'patient_id'];
}
