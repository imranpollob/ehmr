<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class Vaccine extends Model {

    

    

    protected $table    = 'vaccine';
    
    protected $fillable = [
          'name',
          'repeat',
          'starts',
          'type'
    ];
    

    public static function boot()
    {
        parent::boot();

        Vaccine::observe(new UserActionsObserver);
    }
    
    
    
    
}