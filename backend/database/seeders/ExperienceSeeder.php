<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class ExperienceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $count = DB::table('experience')->count();
        if ($count > 0) {
            DB::table('experience')->delete();
        }
        //
        DB::table('experience')->insert([
            'title' => 'Chưa có kinh nghiệm',
        ]);
        DB::table('experience')->insert([
            'title' => 'Dưới 1 năm',
        ]);
        for ($i = 1; $i < 5; $i++) {
            DB::table('experience')->insert([
                'title' => ($i) . ' năm',
            ]);
        }
        DB::table('experience')->insert([
            'title' => 'trên 5 năm',
        ]);
    }
}
