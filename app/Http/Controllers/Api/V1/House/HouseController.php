<?php

namespace App\Http\Controllers\Api\V1\House;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\House;


class HouseController extends Controller
{
	public function index(Request $request){
		
		/* search */
		$location_name = trim($request->get('location_name'));
		$location_name = !empty($location_name)? $location_name : null;
		$price_range = trim($request->get('price_range'));
		$price_range = !empty($price_range)? explode(',',$price_range) : null;
		$room_dimention = trim($request->get('room_dimention'));
		$room_dimention = !empty($room_dimention)? explode(',',$room_dimention) : null;
		$facilities = trim($request->get('facilities'));
		$facilities = !empty($facilities)? explode(',',$facilities) : null;
		
		$houses = House::with(['coverimages'])->orderBy('houses.created_at', 'DESC');
		if (!is_null($location_name) ){
			$houses = $houses->where('houses.street','LIKE', '%'.$location_name.'%');
		}
		if (!is_null($price_range) ){
			$houses = $houses->whereBetween('houses.price', $price_range);
		}
		if (!is_null($room_dimention) ){
			$room_dimention = $houses->whereBetween('houses.dimention', $room_dimention);
		}
		if(!is_null($facilities)){
			$houses = $houses->join('facility_house', 'houses.id', '=', 'facility_house.house_id')
			->join('facilities', 'facility_house.facility_id', '=', 'facilities.id')
			->whereIn('facilities.id', $facilities);
		}
		
		$houses = $houses->paginate(3,['houses.id', 'houses.name', 'houses.price', 'houses.street']);
		//return 1;
		if( !$houses->isEmpty() ){
			$datas = [];
			foreach($houses as $key => $house){
				$datas[$key]['id'] = $house->id;
				$datas[$key]['name'] = $house->name;
				$datas[$key]['image'] = !is_null($house->coverimages)? $house->coverimages->mediumimage : $house->id;
				$datas[$key]['price'] = $house->rupiah;
				$datas[$key]['locationName'] = $house->street ;
			}

			return response()->json([
				'data' => $datas
			]);
		}
		return response()->json(null);
	}
	
	public function show($id){
		$house = House::where('id', $id)->first();
		
        if ( is_null($house) ) {
			return response()->json([
				'success' => false,
				'code' => 'not_found',
				'errors' => 'Data Not Found',
			], 404);
		}
		$images = [];
		foreach($house->images as $im ){
			$images[] = [
				'url' => $im->bigimage,
			];
		}

		return response()->json([
				'spec' => [
					'id' => $id,
					'name' => $house->name,
					'images' => $images,
					'price' => $house->rupiah,
					'dimention' => $house->dimention.' m2',
					'facilities' => $house->facilities->lists('name' ),
					'location' => [
						'province' => $house->province,
						'city' => $house->city,
						'street' => $house->street,
						'lat' => $house->latitude,
						'lng' => $house->longitude,
					],
					'description' => $house->description,
				],
				'owner' => [
					'name' => $house->owner_name,
					'phone' => $house->owner_phone,
				],
		]);
	}
}
