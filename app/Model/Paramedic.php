<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Paramedic extends Model
{
    protected $table = 'paramedic';

    protected $primaryKey = 'paramedic_id';

    protected $fillable = ['paramedic_name', 'paramedic_mobile', 'paramedic_email', 'paramedic_password',' paramedic_status'];
}
