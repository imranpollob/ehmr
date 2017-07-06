<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;




class Medicine extends Model {

    

    

    protected $table    = 'medicine';
    
    protected $fillable = [
          'drug_for',
          'drug_class',
          'brand_name',
          'contains',
          'type',
          'manufacturer',
          'price'
    ];
    

    public static function boot()
    {
        parent::boot();

        Medicine::observe(new UserActionsObserver);
    }
    
    
    
    
}