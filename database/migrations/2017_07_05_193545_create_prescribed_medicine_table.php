<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreatePrescribedMedicineTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('prescribedmedicine',function(Blueprint $table){
            $table->increments("id");
            $table->string("prescription_id");
            $table->string("medicine_id");
            $table->string("schedule_id");
            $table->string("days");
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
        Schema::drop('prescribedmedicine');
    }

}