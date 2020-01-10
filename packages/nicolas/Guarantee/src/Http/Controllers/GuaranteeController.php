<?php

namespace nicolas\Guarantee\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use nicolas\Guarantee\Models\Guarantee;

class GuaranteeController extends Controller

{
    /**
 * Display a listing of the resource.
 *
 * @return \Illuminate\Http\Response
 */
    protected $_config;

    public function __construct()
    {
        $this->_config = request('_config');
    }
    public function index(){
        $guarantees = Guarantee::with('products')->get();
        return view($this->_config['view'], compact('guarantees'));
//            ->with(['startDate' => $this->startDate, 'endDate' => $this->endDate])


//        return $guarantee;
    }
    public function store(Request $request){
//        dd();
        $name = $request->get('name');
        $number = $request->get('number');
        $product_id = $request->get('product_id');
        $tel = $request->get('tel');
        $review = $request->get('review');


        $guarantee = Guarantee::create([
            'name' => $name,
            'guarantee_number' => $number,
            'product_id' => $product_id,
            'cellphone' => $tel,
            'status' => 0,
            'review' => $review ,
        ]);

        return view('guarantee::submit.accept',compact('guarantee'));
    }
}
