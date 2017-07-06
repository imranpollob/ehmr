<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreatePrescriptionTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('prescription',function(Blueprint $table){
            $table->increments("id");
            $table->string("patient_id");
            $table->string("doctor_id");
            $table->string("hospital_id")->nullable();
            $table->string("doctor_assistant_id")->nullable();
            $table->string("document_id")->nullable();
            $table->string("created_by");
            $table->string("updated_by")->nullable();
            $table->string("problems")->nullable();
            $table->string("note")->nullable();
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
        Schema::drop('prescription');
    }

}