<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Facility extends Model
{
	protected $fillable = ['name' ];
	
	public function houses()
    {
        return $this->belongsToMany('App\House');
    }
}
