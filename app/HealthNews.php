<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class HealthNews extends Model {

    

    

    protected $table    = 'healthnews';
    
    protected $fillable = [
          'title',
          'body',
          'approval_status',
          'approved_by',
          'created_by',
          'updated_by'
    ];
    

    public static function boot()
    {
        parent::boot();

        HealthNews::observe(new UserActionsObserver);
    }
    
    
    
    
}