<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class BloodGroup extends Model {

    

    

    protected $table    = 'bloodgroup';
    
    protected $fillable = ['title'];
    

    public static function boot()
    {
        parent::boot();

        BloodGroup::observe(new UserActionsObserver);
    }
    
    
    
    
}