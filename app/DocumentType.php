<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class DocumentType extends Model {

    

    

    protected $table    = 'documenttype';
    
    protected $fillable = ['title'];
    

    public static function boot()
    {
        parent::boot();

        DocumentType::observe(new UserActionsObserver);
    }
    
    
    
    
}