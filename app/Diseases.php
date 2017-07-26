<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class Diseases extends Model {

    

    

    protected $table    = 'diseases';
    
    protected $fillable = ['title'];
    

    public static function boot()
    {
        parent::boot();

        Diseases::observe(new UserActionsObserver);
    }
    
    
    
    
}