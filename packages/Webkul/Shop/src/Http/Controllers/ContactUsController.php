<?php


namespace Webkul\Shop\Http\Controllers;


use Webkul\Core\Models\Contact;
use Illuminate\Http\Request;

class ContactUsController extends Controller
{
        public function store(Request $request){

            Contact::create([
                'name' => $request->name,
                'email' => $request->email,
                'mobile' => $request->mobile,
                'branch' => $request->branch,
                'message' => $request->message,
            ]);
            return redirect()->back();
        }
}