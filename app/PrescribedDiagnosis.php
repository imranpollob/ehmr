<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class PrescribedDiagnosis extends Model {

    

    

    protected $table    = 'prescribeddiagnosis';
    
    protected $fillable = [
          'prescription_id',
          'diagnosis_id'
    ];
    

    public static function boot()
    {
        parent::boot();

        PrescribedDiagnosis::observe(new UserActionsObserver);
    }
    
    
    
    
}