<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HouseImage extends Model
{
	protected $fillable = ['cover', 'path', 'image_file', 'house_id' , 'sort'];
    public $timestamps = false;
		
	public function scopeCover($query)
    {
        return $query->where('cover',1);
    }
	public function getBigimageAttribute()
	{
		return asset($this->path.'/'.$this->image_file);
	}
	public function getMediumimageAttribute()
	{
		return asset($this->path.'/medium/'.$this->image_file);
	}
	public function getThumbnailimageAttribute()
	{
		return asset($this->path.'/thumbnail/'.$this->image_file);
	}
	public function getSmallimageAttribute()
	{
		return asset($this->path.'/small/'.$this->image_file);
	}
}
