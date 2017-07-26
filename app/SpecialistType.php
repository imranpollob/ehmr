<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class SpecialistType extends Model {

    

    

    protected $table    = 'specialisttype';
    
    protected $fillable = [
          'title',
          'description'
    ];
    

    public static function boot()
    {
        parent::boot();

        SpecialistType::observe(new UserActionsObserver);
    }
    
    
    
    
}