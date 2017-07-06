<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreatePrescribedMedicineRequest extends FormRequest {

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
            'prescription_id' => 'required', 
            'medicine_id' => 'required', 
            'schedule_id' => 'required', 
            'days' => 'required', 
            
		];
	}
}
