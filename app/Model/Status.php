<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    protected $table = 'loginstatus';

    protected $primaryKey = 'id';

    protected $fillable = ['deveice_id', 'status', 'email'];
}
