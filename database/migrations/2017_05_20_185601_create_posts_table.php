<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->increments('id');
			$table->timestamp('created_at')->useCurrent();
			$table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'));
			$table->dateTime('published_at');
			$table->softDeletes();
            $table->enum('status', ['published', 'programmed'])->default('published');
            $table->string('title', 60)->unique();  
            $table->string('slug', 80)->unique();  
            $table->string('subtitle', 150)->nullable();
            $table->text('excerpt')->nullable;  
            $table->text('content');
            $table->string('image_url',80)->unique();
            $table->string('video_url',80)->unique()->nullable();
			$table->boolean('is_featured')->default(false);
			$table->boolean('is_popular')->default(false);

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
}
