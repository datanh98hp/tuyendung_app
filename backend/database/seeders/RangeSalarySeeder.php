<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class RangeSalarySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $count = DB::table('range_salary')->count();
        if ($count > 0) {
            DB::table('range_salary')->delete();
        }
        //
        DB::table('range_salary')->insert([
            'title' => 'Dưới 10 triệu',
        ]);
        $step = 5;

        for ($i=0; $i < 30; $i++) { 
            if ($i % $step == 0) {
                DB::table('range_salary')->insert([
                    'title' => $step.' - '. ($step + 5) . ' triệu',
                ]);
                $step += 5;
            }
        }
        DB::table('range_salary')->insert([
            'title' => 'Trên 30 triệu',
        ]);
        
    }
}
