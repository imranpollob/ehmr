<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateTesteditorTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('testeditor',function(Blueprint $table){
            $table->increments("id");
            $table->text("editor")->nullable();
            $table->string("file")->nullable();
            $table->dateTime("datetime")->nullable();
            $table->string("photo")->nullable();
            $table->date("date")->nullable();
            $table->decimal("money", 15, 2)->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('testeditor');
    }

}