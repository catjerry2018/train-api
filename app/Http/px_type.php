<?php

namespace App\Http;

use Illuminate\Database\Eloquent\Model;

class px_type extends Model
{
    //
    protected $table='px_type';
    protected $primaryKey='ID';
    public $timestamps=false;
    protected $guarded=[];
}
