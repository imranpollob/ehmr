<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class Diagnosis extends Model {

    

    

    protected $table    = 'diagnosis';
    
    protected $fillable = [
          'name',
          'recommended_for'
    ];
    

    public static function boot()
    {
        parent::boot();

        Diagnosis::observe(new UserActionsObserver);
    }
    
    
    
    
}