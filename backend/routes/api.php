<?php

use App\Http\Controllers\JobController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::controller(JobController::class)->group(function () {
    Route::get('/jobs', 'index');
});

/// cập nhật data provinces

Route::get('/reload-province-data', function () {
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
        return response()->json([
            'status' => 'success',
            'message' => 'Cập nhật dữ liệu thành công',
        ]);
        //return    $data['results'][0]['province_name'];
    } catch (\Throwable $th) {
        return response()->json([
            'status' => false,
            'message' => 'Error: ' . $th->getMessage(),
        ]);
    }

});