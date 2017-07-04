<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateDocumentTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('document',function(Blueprint $table){
            $table->increments("id");
            $table->string("document_type")->nullable();
            $table->string("patient_id");
            $table->string("doctor_id")->nullable();
            $table->string("hospital_id")->nullable();
            $table->string("lab_id")->nullable();
            $table->string("created_by");
            $table->string("updated_by")->nullable();
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
        Schema::drop('document');
    }

}