<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;

use Carbon\Carbon; 

use Illuminate\Database\Eloquent\SoftDeletes;

class Testeditor extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'testeditor';
    
    protected $fillable = [
          'editor',
          'file',
          'datetime',
          'photo',
          'date',
          'money'
    ];
    

    public static function boot()
    {
        parent::boot();

        Testeditor::observe(new UserActionsObserver);
    }
    
    
    /**
     * Set attribute to date format
     * @param $input
     */
    public function setDateAttribute($input)
    {
        if($input != '') {
            $this->attributes['date'] = Carbon::createFromFormat(config('quickadmin.date_format'), $input)->format('Y-m-d');
        }else{
            $this->attributes['date'] = '';
        }
    }

    /**
     * Get attribute from date format
     * @param $input
     *
     * @return string
     */
    public function getDateAttribute($input)
    {
        if($input != '0000-00-00') {
            return Carbon::createFromFormat('Y-m-d', $input)->format(config('quickadmin.date_format'));
        }else{
            return '';
        }
    }


    /**
     * Set attribute to datetime format
     * @param $input
     */
    public function setDatetimeAttribute($input)
    {
        if($input != '') {
            $this->attributes['datetime'] = Carbon::createFromFormat(config('quickadmin.date_format') . ' ' . config('quickadmin.time_format'), $input)->format('Y-m-d H:i:s');
        }else{
            $this->attributes['datetime'] = '';
        }
    }

    /**
     * Get attribute from datetime format
     * @param $input
     *
     * @return string
     */
    public function getDatetimeAttribute($input)
    {
        if($input != '0000-00-00') {
            return Carbon::createFromFormat('Y-m-d H:i:s', $input)->format(config('quickadmin.date_format') . ' ' .config('quickadmin.time_format'));
        }else{
            return '';
        }
    }


}