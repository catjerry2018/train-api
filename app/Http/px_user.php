<?php

namespace App\Http;

use Illuminate\Database\Eloquent\Model;

class px_user extends Model
{
    //
    protected $table='px_user';
    protected $primaryKey='ID';
    public $timestamps=false;
    protected $guarded=[];
}
