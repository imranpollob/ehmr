<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateLabTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('lab',function(Blueprint $table){
            $table->increments("id");
            $table->string("name");
            $table->string("hospital_id")->nullable();
            $table->string("lab_type")->nullable();
            $table->string("address");
            $table->string("phone");
            $table->string("alt_phone")->nullable();
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
        Schema::drop('lab');
    }

}