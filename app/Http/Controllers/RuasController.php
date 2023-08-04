<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\m_ruas;
use Illuminate\Support\Facades\DB;

class RuasController extends Controller
{
    public function index()
    {
        $data_ruas = m_ruas::all();
        return response()->json(['data_ruas' => $data_ruas]);
    }

    public function detail($id)
    {
        $data_detail = m_ruas::findOrFail($id);
        return response()->json(['data_detail' => $data_detail]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'ruas' => 'required',
            'km_awal' => 'required',
            'km_akhir' => 'required',
        ]);

        DB::table('ruas')->insert(
            [
                'ruas' => $request->ruas,
                'km_awal' => $request->km_awal,
                'km_akhir' => $request->km_akhir,
            ]
        );

        return response()->json([
            'message' => 'data berhasil input'
        ], 201);
    }

    public function update(Request $request, $id)
    {
        DB::table('ruas')->where('id',$request->id)->update([
            'ruas' => $request->ruas,
            'km_awal' => $request->km_awal,
            'km_akhir' => $request->km_akhir
        ]);

        return response()->json([
            'message' => 'data berhasil update'
        ], 201);
    }

    public function destroy($id)
    {
        DB::table('ruas')->where('id',$id)->delete();
        return response()->json([
            'message' => 'data berhasil dihapus'
        ], 201);

    }
}
