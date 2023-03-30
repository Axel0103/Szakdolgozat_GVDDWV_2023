<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Kerdoiv;
use App\Models\Kerdesek;

class PagesController extends Controller
{
    public function kitolt(Kerdoiv $kerdoiv) {
        $questionnaire = $kerdoiv->load('kerdesek.valaszok');
        return view('pages.kitolto')
        ->with('questionnaire',$questionnaire);
    }
    
    public function charts() {
            $questionnaires = DB::table('kerdoivs')
            ->select('*')->get();

            $questions = Kerdesek::all();

            $answers_arr = [];
            foreach($questions as $question)
            {
                $question_id = $question->kerdes_id;
                $answers = DB::table('valaszoks')
                ->select('*')
                ->where('kerdes_id', '=', $question_id)->get();
                array_push($answers_arr, $answers);
            }
            return view('pages.highcharts')
            ->with('questionnaires',$questionnaires)
            ->with('questions',$questions)
            ->with('answers_arr',$answers_arr);
    }
    
    public function index() {
        $numberOfQuestionnaire = DB::table('kerdoivs')->count('kerdoiv_id');
        return view('pages.index')->with('numberOfQuestionnaire', $numberOfQuestionnaire);
    }
}    
