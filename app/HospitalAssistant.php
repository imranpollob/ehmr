<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;

use Carbon\Carbon; 



class HospitalAssistant extends Model {

    

    

    protected $table    = 'hospitalassistant';
    
    protected $fillable = [
          'name',
          'dob',
          'gender',
          'is_married',
          'mobile',
          'alt_mobile',
          'address',
          'blood_group',
          'hospital_id'
    ];
    

    public static function boot()
    {
        parent::boot();

        HospitalAssistant::observe(new UserActionsObserver);
    }
    
    
    /**
     * Set attribute to date format
     * @param $input
     */
    public function setDobAttribute($input)
    {
        if($input != '') {
            $this->attributes['dob'] = Carbon::createFromFormat(config('quickadmin.date_format'), $input)->format('Y-m-d');
        }else{
            $this->attributes['dob'] = '';
        }
    }

    /**
     * Get attribute from date format
     * @param $input
     *
     * @return string
     */
    public function getDobAttribute($input)
    {
        if($input != '0000-00-00') {
            return Carbon::createFromFormat('Y-m-d', $input)->format(config('quickadmin.date_format'));
        }else{
            return '';
        }
    }


    
}