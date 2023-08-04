<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{

    public function register(Request $request)
    {

        //set validation
        $validator = Validator::make($request->all(), [
            'fullname'      => 'required',
            'email'     => 'required|email|unique:users',
            'username'     => 'required|unique:users',
            'password'  => 'required|confirmed'
        ]);
        
        // if ($validator->fails()) {
        //     return response()->json($validator->errors(), 422);
        // }

        $user = User::create([
            'fullname'      => $request->fullname,
            'email'     => $request->email,
            'username'      => $request->username,
            'password'  => bcrypt($request->password)
        ]);
      

        //return response JSON user is created
        if($user) {
            return response()->json([
                'success' => true,
                'user'    => $user,  
            ], 201);
        }

        //return JSON process insert failed 
        return response()->json([
            'success' => false,
        ], 409);

    }
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $user = User::where('email', $request->email)->first();
        //dd($user);
        if (! $user || ! Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect.'],
            ]);
        }

        $token = $user->createToken('user login')->plainTextToken;
        return response()->json([
            'message' => 'success',
            'user' => $user,
            'token' => $token,
        ], 200);
    }

    public function logout(Request $request)
    {
        $user = $request->user();
        $user->currentAccessToken()->delete();

        return response()->json([
            'message' => 'berhasil logout'
        ], 200);
    }
}
