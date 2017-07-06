<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class PrescribedMedicine extends Model {

    

    

    protected $table    = 'prescribedmedicine';
    
    protected $fillable = [
          'prescription_id',
          'medicine_id',
          'schedule_id',
          'days'
    ];
    

    public static function boot()
    {
        parent::boot();

        PrescribedMedicine::observe(new UserActionsObserver);
    }
    
    
    
    
}