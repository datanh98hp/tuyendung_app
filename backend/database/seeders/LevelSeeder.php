<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class LevelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $count = DB::table('level')->count();
        if ($count > 0) {
            DB::table('level')->delete();
        }
        //
        DB::table('level')->insert([
            'level_name' => 'Phổ thông',
        ]);
        DB::table('level')->insert([
            'level_name' => 'Cao đẳng',
        ]);
        DB::table('level')->insert([
            'level_name' => 'Đại học',
        ]);
    }
}
