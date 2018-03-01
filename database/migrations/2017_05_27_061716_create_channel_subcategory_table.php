<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChannelSubcategoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('channel_subcategory', function (Blueprint $table) {
            $table->increments('id');
			$table->timestamp('created_at')->useCurrent();
			$table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'));
			$table->integer('channel_id')->unsigned()->nullable();
			$table->foreign('channel_id')->references('id')->on('channels')->onDelete('cascade');
			$table->integer('subcategory_id')->unsigned()->nullable();
			$table->foreign('subcategory_id')->references('id')->on('subcategories') ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('channel_subcategory');
    }
}
