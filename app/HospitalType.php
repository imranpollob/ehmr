<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class HospitalType extends Model {

    

    

    protected $table    = 'hospitaltype';
    
    protected $fillable = ['title'];
    

    public static function boot()
    {
        parent::boot();

        HospitalType::observe(new UserActionsObserver);
    }
    
    
    
    
}