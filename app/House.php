<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class House extends Model
{
	protected $fillable = ['path', 'name', 'price', 'dimention' , 'province', 'city', 'street', 'description', 'latitude', 'longitude', 'owner_name', 'owner_phone'];
	

	public function images()
    {
        return $this->hasMany('App\HouseImage')->orderBy('sort', 'asc')->select(['id', 'house_id', 'cover', 'image_file', 'path']);
    }
	
	public function coverimages()
    {
        return $this->hasOne('App\HouseImage')->orderBy('sort','asc')->where('cover',1)->select(['id', 'house_id', 'cover', 'image_file', 'path']);
    }
	
	public function facilities()
    {
        return $this->belongsToMany('App\Facility');
    }
	
	
	public function getRupiahAttribute()
	{
		return 'Rp'.number_format( $this->price , is_numeric( $this->price ) && floor( $this->price ) != $this->price? 2 : 0 , ',' , '.' ) ;
	}
	
}
