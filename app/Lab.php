<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class Lab extends Model {

    

    

    protected $table    = 'lab';
    
    protected $fillable = [
          'name',
          'hospital_id',
          'lab_type',
          'address',
          'phone',
          'alt_phone',
          'email'
    ];
    

    public static function boot()
    {
        parent::boot();

        Lab::observe(new UserActionsObserver);
    }
    
    
    
    
}