<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddForeignKeysToComments extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('comments', function (Blueprint $table) {
			$table->integer('user_id')->unsigned()->nullable();
			$table->foreign('user_id')
			  ->references('id')->on('users')
			  ->onDelete('cascade');
				
			$table->integer('post_id')->unsigned()->nullable();
			$table->foreign('post_id')
			  ->references('id')->on('posts')
			  ->onDelete('cascade');		
				
			$table->integer('channel_id')->unsigned()->nullable();
			$table->foreign('channel_id')
			  ->references('id')->on('channels')
			  ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('comments', function (Blueprint $table) {
            $table->dropColumn('user_id');
            $table->dropColumn('post_id');
            $table->dropColumn('channel_id');
        });
    }
}
