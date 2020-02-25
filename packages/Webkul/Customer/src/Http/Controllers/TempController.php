<?php


namespace Webkul\Customer\Http\Controllers;


use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Webkul\Customer\Models\Temp;

class TempController extends Controller
{
    public function index()
    {
        return view('shop::customers.signup.get-mobile');
    }

    public function sendSms(Request $request)
    {
        $cellphone = $request->mobile;

        //        sending sms
        $token = rand('11111', '99999');
        $client = new Client(); //GuzzleHttp\Client
        $key = '4C77664C384B376F6A59376A3737496F31533954556D717353574A416249314A376B4E4C4B7A4A466C70343D';
        $result = $client->post('https://api.kavenegar.com/v1/' . $key . '/verify/lookup.json
', [
            'form_params' => [
                'receptor' => $request->mobile,
                'token' => $token,
                'template' => 'Register',
            ]
        ]);
        $temp = Temp::where('cellphone', $request->mobile);
        if ($temp) {
            $temp->delete();
        }
        $created = Temp::create([
            'cellphone' => $request->mobile,
            'code' => $token,
        ]);
        return view('shop::customers.signup.verify-sms', compact('cellphone'));
        //here must be inserted in temp table
    }

    public function verifySms(Request $request)
    {
        $cellphone = $request->mobile;
        $code = $request->code;
        $temp = Temp::where('cellphone', $cellphone)->where('code', $code)->first();
        if ($temp) {
            $temp->delete();
            return view('shop::customers.signup.index', compact('cellphone'));
        } else {
            return redirect()->back();
        }
    }
}