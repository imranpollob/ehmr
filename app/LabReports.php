<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class LabReports extends Model {

    

    

    protected $table    = 'labreports';
    
    protected $fillable = [
          'patient_id',
          'lab_document'
    ];
    

    public static function boot()
    {
        parent::boot();

        LabReports::observe(new UserActionsObserver);
    }
    
    
    
    
}