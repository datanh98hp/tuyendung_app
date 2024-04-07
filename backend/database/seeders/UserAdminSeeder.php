<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
class UserAdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        \App\Models\User::create([
            'name' => 'Admin',
            'email' => 'admin@tuyendung',
            'password' => Hash::make('admin'),
            'avt' => '/',
            'desc' => 'Mô tả',
            'active'=>'1',
            'role' => 'admin',
            'banner'=>'/',
        ]);
    }
}
