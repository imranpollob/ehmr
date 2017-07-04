<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateHospitalTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('hospital',function(Blueprint $table){
            $table->increments("id");
            $table->string("name");
            $table->string("hospital_type");
            $table->string("address");
            $table->string("phone");
            $table->string("alt_phone")->nullable();
            $table->string("registration_no")->nullable();
            $table->string("email")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('hospital');
    }

}