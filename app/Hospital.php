<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class Hospital extends Model {

    

    

    protected $table    = 'hospital';
    
    protected $fillable = [
          'name',
          'hospital_type',
          'address',
          'phone',
          'alt_phone',
          'registration_no',
          'email'
    ];
    

    public static function boot()
    {
        parent::boot();

        Hospital::observe(new UserActionsObserver);
    }
    
    
    
    
}