<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class Prescription extends Model {

    

    

    protected $table    = 'prescription';
    
    protected $fillable = [
          'patient_id',
          'doctor_id',
          'hospital_id',
          'doctor_assistant_id',
          'document_id',
          'created_by',
          'updated_by',
          'problems',
          'note'
    ];
    

    public static function boot()
    {
        parent::boot();

        Prescription::observe(new UserActionsObserver);
    }
    
    
    
    
}