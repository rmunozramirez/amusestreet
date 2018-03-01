<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChannelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('channels', function (Blueprint $table) {
            $table->increments('id');
			$table->timestamp('created_at')->useCurrent();
			$table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'));
			$table->softDeletes();
            $table->enum('status', ['active', 'inactive', 'on_hold', 'banned'])->default('inactive');
            $table->string('title', 60)->unique();  
            $table->string('slug', 80)->unique();  
            $table->string('subtitle', 150)->nullable();
            $table->text('excerpt')->nullable;  
            $table->text('about_channel')->nullable();
            $table->string('image_url', 80)->unique();
            $table->string('video_url', 80)->unique()->nullable();
			$table->boolean('is_featured')->default(false);
			$table->boolean('is_popular')->default(false);
			$table->boolean('is_testimonial')->default(false);
            $table->string('web', 160)->nullable();
            $table->string('facebook', 160)->nullable();
            $table->string('googleplus', 160)->nullable();
            $table->string('twitter', 160)->nullable();
            $table->string('linkedin', 160)->nullable();
            $table->string('youtube', 160)->nullable();
			
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('channels');
    }
}
