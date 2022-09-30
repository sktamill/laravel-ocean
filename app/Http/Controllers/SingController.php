<?php

namespace App\Http\Controllers;

use App\Http\Resources\SingResource;
use App\Models\Sing;
use Illuminate\Http\Request;

class SingController extends Controller
{
    public function index()
    {
        return view('main');
    }

    public function getSings()
    {
        $sings = Sing::all();

        return SingResource::collection($sings);
    }
}
