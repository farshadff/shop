<?php

namespace Webkul\Admin\Http\Controllers\Sales;

use Barryvdh\DomPDF\Facade as PDF;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\App;
use Webkul\Admin\Http\Controllers\Controller;
use Webkul\Sales\Repositories\OrderRepository as Order;

/**
 * Sales Order controller
 *
 * @author    Jitendra Singh <jitendra@webkul.com>
 * @copyright 2018 Webkul Software Pvt Ltd (http://www.webkul.com)
 */
class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected $_config;

    /**
     * OrderRepository object
     *
     * @var array
     */
    protected $order;

    /**
     * Create a new controller instance.
     *
     * @param  \Webkul\Sales\Repositories\OrderRepository  $order
     * @return void
     */
    public function __construct(Order $order)
    {
        $this->middleware('admin');

        $this->_config = request('_config');

        $this->order = $order;

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view($this->_config['view']);
    }

    /**
     * Show the view for the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function view($id)
    {
        $order = $this->order->findOrFail($id);

        return view($this->_config['view'], compact('order'));
    }

    /**
     * Cancel action for the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function cancel($id)
    {
        $result = $this->order->cancel($id);

        if ($result) {
            session()->flash('success', trans('admin::app.response.cancel-success', ['name' => 'Order']));
        } else {
            session()->flash('error', trans('admin::app.response.cancel-error', ['name' => 'Order']));
        }

        return redirect()->back();
    }
//    this return must later on print the orders for operator
    public function todayOrders(){
        $orders = \Webkul\Sales\Models\Order::with('addresses')->where('created_at','>=',Carbon::today()->format('Y-m-d h:m:s'))->get();
//        $route = view($this->_config['view']);
//        $pdf = App::make('dompdf.wrapper');
//        return $route;
//        $pdf->loadHTML($route);
//        return $pdf->stream();
//        $pdf = PDF::loadView($this->_config['view']);
//        return $pdf->download('invoice.pdf');
//        dd($orders);
        return view($this->_config['view'], compact('orders'));

//        return $order;
    }
}