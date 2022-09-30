<?php

namespace App\Http\Controllers;

use App\Http\Resources\PredictionResource;
use App\Models\Prediction;
use Illuminate\Http\Request;


class PredictionController extends Controller
{
    public function getPrediction(Request $request)
    {
        $data_id = $request->all();

        $date = date('Y-m-d');

        $prediction = Prediction::where('sing_id', $data_id['id'])
            ->where('date', $date)->first();

        if($prediction && $prediction->date == $date){
                $prediction->update([
                    'is_open' => 1,
                ]);
            } else{
                $prediction = Prediction::where('date', '<', $date)->first();

                $prediction->update([
                        'is_open' => 1,
                        'date' => $date,
                        'sing_id' => $data_id['id']
                    ]);
            }

           return new PredictionResource($prediction);
    }

    public function createPrediction(Request $request)
    {
        $data = $request->all();

        $predictions = explode('|', $data['data']);

        foreach ($predictions as $prediction){
            Prediction::firstOrCreate([
                'content' => trim($prediction),
                'date' => date("Y-m-d", strtotime("-1 DAY")),
                'sing_id' => 0
            ]);
        }

        return response(['message' => 'Predictions Added Successfully!']);
    }

}
