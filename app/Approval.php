<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class Approval extends Model {

    

    

    protected $table    = 'approval';
    
    protected $fillable = [
          'user_id',
          'requested_user_id',
          'is_approved'
    ];
    

    public static function boot()
    {
        parent::boot();

        Approval::observe(new UserActionsObserver);
    }
    
    
    
    
}