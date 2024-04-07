<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        try {
            $countLocaton = DB::table('location')->count();
            if ($countLocaton !== 0) { //xoa het du lieu
                DB::table('location')->delete();
            }
            $response = Http::withHeaders([
                'Content-type',
                'application/json; charset=utf-8'
            ])->get('https://vapi.vnappmob.com/api/province/');
            $data = json_decode($response->body(), true);
            foreach ($data['results'] as $provine) {
                DB::table('location')->insert([
                    'tilte' => $provine['province_name'],
                    'code' => $provine['province_id'],
                ]);
            }
            // return response()->json([
            //     'status' => true,
            //     'message' => 'Cập nhật dữ liệu thành công',
            // ]);
            //return    $data['results'][0]['province_name'];
        } catch (\Throwable $th) {
            // return response()->json([
            //     'status' => false,
            //     'message' => 'Error: ' . $th->getMessage(),
            // ]);
        }


    }
}
