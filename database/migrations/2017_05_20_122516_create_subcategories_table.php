<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubcategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subcategories', function (Blueprint $table) {
            $table->increments('id');
			$table->timestamp('created_at')->useCurrent();
			$table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'));
			$table->softDeletes();
            $table->enum('status', ['active', 'inactive', 'on_hold'])->default('active');
            $table->string('title', 60)->unique();  
            $table->string('slug', 80)->unique();  
            $table->string('subtitle', 150)->nullable();
            $table->string('excerpt', 256)->nullable;  
            $table->text('about_subcategory')->nullable();
            $table->string('image_url', 80)->unique();
			$table->boolean('is_featured')->default(false);
			$table->boolean('is_popular')->default(false);
			$table->boolean('in_menu')->default(true);
			
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('subcategories');
    }
}
