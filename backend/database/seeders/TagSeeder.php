<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // $count = DB::table('tag')->count();
        // if ($count > 0) {
        //     DB::table('tag')->truncate();
        // }
        DB::table('tag')->insert([
            'name' => 'Công nghệ thông tin / Viễn thông',
        ]);
        DB::table('tag')->insert([
            'name' => 'Lập trình',
        ]);
        DB::table('tag')->insert([
            'name' => 'Software',
        ]);
        DB::table('tag')->insert([
            'name' => 'Fontend',
        ]);
        DB::table('tag')->insert([
            'name' => 'Backend',
        ]);
        DB::table('tag')->insert([
            'name' => 'English',
        ]);
        DB::table('tag')->insert([
            'name' => 'Tester',
        ]);
        DB::table('tag')->insert([
            'name' => 'QA/QC',
        ]);
        DB::table('tag')->insert([
            'name' => 'Kế Toán / Kiểm toán',
        ]);
        DB::table('tag')->insert([
            'name' => 'Tài chính / Ngân hàng',
        ]);
        DB::table('tag')->insert([
            'name' => 'Kế Toán / Kiểm toán',
        ]);
        DB::table('tag')->insert([
            'name' => 'Marketing / Truyền thông',
        ]);
        DB::table('tag')->insert([
            'name' => 'Thiết kế',
        ]);
        DB::table('tag')->insert([
            'name' => 'Kỹ thuật',
        ]);
        DB::table('tag')->insert([
            'name' => 'Sản xuất',
        ]);
        DB::table('tag')->insert([
            'name' => 'Y tế / Sức khỏe',
        ]);
        DB::table('tag')->insert([
            'name' => 'Nhân sự',
        ]);
        DB::table('tag')->insert([
            'name' => 'Sale / Kinh doanh ',
        ]);
        DB::table('tag')->insert([
            'name' => 'Phục vụ / Pha chế',
        ]);
        DB::table('tag')->insert([
            'name' => 'Bán lẻ / Tiêu dùng',
        ]);
        DB::table('tag')->insert([
            'name' => 'Bất động sản',
        ]);
        DB::table('tag')->insert([
            'name' => 'Bảo hiểm',
        ]);
        DB::table('tag')->insert([
            'name' => 'Quảng cáo',
        ]);
        DB::table('tag')->insert([
            'name' => 'Media',
        ]);
    }
}
