<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateMedicineTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('medicine',function(Blueprint $table){
            $table->increments("id");
            $table->string("drug_for")->nullable();
            $table->string("drug_class");
            $table->string("brand_name");
            $table->string("contains");
            $table->string("type")->nullable();
            $table->string("manufacturer");
            $table->string("price")->nullable();
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
        Schema::drop('medicine');
    }

}