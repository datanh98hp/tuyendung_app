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

            $table->unsignedBigInteger('typeId');
            $table->foreign('typeId')->references('id')->on('type');

            $table->unsignedBigInteger('level_id');
            $table->foreign('level_id')->references('id')->on('level');

            $table->unsignedBigInteger('authorId');
            $table->foreign('authorId')->references('id')->on('users');

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
