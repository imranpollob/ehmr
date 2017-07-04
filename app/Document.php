<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class Document extends Model {

    

    

    protected $table    = 'document';
    
    protected $fillable = [
          'document_type',
          'patient_id',
          'doctor_id',
          'hospital_id',
          'lab_id',
          'created_by',
          'updated_by'
    ];
    

    public static function boot()
    {
        parent::boot();

        Document::observe(new UserActionsObserver);
    }
    
    
    
    
}