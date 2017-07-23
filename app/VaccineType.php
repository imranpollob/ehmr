<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class VaccineType extends Model {

    

    

    protected $table    = 'vaccinetype';
    
    protected $fillable = ['title'];
    

    public static function boot()
    {
        parent::boot();

        VaccineType::observe(new UserActionsObserver);
    }
    
    
    
    
}