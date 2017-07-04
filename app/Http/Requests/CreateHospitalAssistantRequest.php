<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateHospitalAssistantRequest extends FormRequest {

	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize()
	{
		return true;
	}

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules()
	{
		return [
            'name' => 'required', 
            'dob' => 'required', 
            'gender' => 'required', 
            'is_married' => 'required', 
            'mobile' => 'required', 
            'address' => 'required', 
            'blood_group' => 'required', 
            'hospital_id' => 'required', 
            
		];
	}
}
