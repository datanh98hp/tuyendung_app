<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('apply_to', function (Blueprint $table) {
            $table->id();
            $table->string('name');

            $table->unsignedBigInteger('jobId');
            $table->foreign('jobId')->references('id')->on('job');
            $table->string('fullname');
            $table->string('phone');
            $table->string('email');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('apply_to');
    }
};
