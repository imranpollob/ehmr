<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class MedicineSchedule extends Model {

    

    

    protected $table    = 'medicineschedule';
    
    protected $fillable = ['title'];
    

    public static function boot()
    {
        parent::boot();

        MedicineSchedule::observe(new UserActionsObserver);
    }
    
    
    
    
}