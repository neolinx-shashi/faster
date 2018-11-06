<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Dummy extends Model
{
    protected $table = 'dummy';

    protected $primaryKey = 'id';

    protected $fillable = ['val'];
}
