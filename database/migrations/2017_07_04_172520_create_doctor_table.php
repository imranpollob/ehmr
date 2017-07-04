<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateDoctorTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('doctor',function(Blueprint $table){
            $table->increments("id");
            $table->string("name");
            $table->date("dob");
            $table->string("gender");
            $table->string("is_married");
            $table->string("mobile");
            $table->string("alt_mobile")->nullable();
            $table->string("address")->nullable();
            $table->string("blood_group");
            $table->string("designation")->nullable();
            $table->string("degree")->nullable();
            $table->string("hospital_id")->nullable();
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
        Schema::drop('doctor');
    }

}