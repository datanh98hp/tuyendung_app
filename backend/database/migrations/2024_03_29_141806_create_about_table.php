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
        Schema::create('about', function (Blueprint $table) {
            $table->id();
            $table->string('location_headquarters')->nullable();
            $table->string('hotline')->nullable();
            $table->string('hr_name');
            $table->string('phone');
            $table->string('logo');
            $table->string('zalo_profile')->nullable();
            $table->string('facebook_profile')->nullable();
            $table->string('meta_tag')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('about');
    }
};
