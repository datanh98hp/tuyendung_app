<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('job', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('description');
            $table->string('location');

            $table->unsignedBigInteger('level_id');
            $table->foreign('level_id')->references('id')->on('level');

            $table->unsignedBigInteger('authorId');
            $table->foreign('authorId')->references('id')->on('users');

            $table->unsignedBigInteger('location_id');
            $table->foreign('location_id')->references('id')->on('location');

            $table->unsignedBigInteger('id_salary_range');
            $table->foreign('id_salary_range')->references('id')->on('range_salary');

            $table->unsignedBigInteger('experience_id');
            $table->foreign('experience_id')->references('id')->on('experience');


            $table->boolean('active')->default(true);
            $table->string('banner')->nullable();
         
            $table->string('prioritized')->nullable();
        
            $table->softDeletes($column = 'deleted_at', $precision = 0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('job');
    }
};
