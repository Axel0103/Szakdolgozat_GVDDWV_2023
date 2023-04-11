@extends('layouts.app')

@section('title') {{'Előoldal'}} @endsection

@section('content')

    <div class="flex justify-center font-sans">
        <div class="flex justify-center w-full">
            <div class="shadow-lg w-3/4 bg-gray-100 p-7 rounded-lg content-center px-10">
                @if ($numberOfQuestionnaire < 1)
                    <p class="w-full p-5 font-light text-lg lg:text-3xl text-center">Jelenleg nincs kérdés az adatbázisban!</p>
                @else
                    <button type="button" id="getRandomQuestionnaire" class="flex justify-center bg-green-600 rounded-md w-3/4 m-auto py-2 px-2 text-gray-100 text-xl font-light transition hover:bg-green-500">Véletlenszerű kérdőív kérése</button>
                    </form>
                @endif
            </div>
        </div>  
    </div>
    <div>
        <main class="bg-white mx-auto p-8 my-10 rounded-lg weather-container">
            <div class="mx-1 weather-content" id="ww_f8bc09ad1efd3" v='1.20' loc='id' a='{"t":"horizontal","lang":"en","ids":["wl9999"],"cl_bkg":"image","cl_font":"#FFFFFF","cl_cloud":"#FFFFFF","cl_persp":"#81D4FA","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722","sl_sot":"celsius","sl_ics":"one_a","font":"Arial"}'>Weather for the Following Location: <a href="https://2ua.org/hun/eger/map/" id="ww_f8bc09ad1efd3_u" target="_blank">Eger map, Hungary</a></div><script async src="https://srv2.weatherwidget.org/js/?id=ww_f8bc09ad1efd3"></script>    
        </main>  
    </div> 
@endsection
