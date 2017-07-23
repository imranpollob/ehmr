<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class BloodBank extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'bloodbank';
    
    protected $fillable = [
          'hospital_id',
          'blood_group',
          'count'
    ];
    

    public static function boot()
    {
        parent::boot();

        BloodBank::observe(new UserActionsObserver);
    }
    
    
    
    
}