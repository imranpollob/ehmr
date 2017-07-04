<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class LabType extends Model {

    

    

    protected $table    = 'labtype';
    
    protected $fillable = ['title'];
    

    public static function boot()
    {
        parent::boot();

        LabType::observe(new UserActionsObserver);
    }
    
    
    
    
}