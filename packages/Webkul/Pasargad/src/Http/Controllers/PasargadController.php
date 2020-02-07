<?php

namespace Webkul\Pasargad\Http\Controllers;

use Illuminate\Http\Request;
use Webkul\Checkout\Facades\Cart;
use Webkul\Sales\Repositories\OrderRepository;
use Webkul\Paypal\Helpers\Ipn;

/**
 * Paypal Standard controller
 *
 * @author    Jitendra Singh <jitendra@webkul.com>
 * @copyright 2018 Webkul Software Pvt Ltd (http://www.webkul.com)
 */
class PasargadController extends Controller
{

  public function index(){
      try {

          $gateway = \Gateway::make(new \Larabookir\Gateway\Pasargad\Pasargad());

          $gateway->setCallback(url('/bank/response')); // You can also change the callback
          $gateway->price(Cart::getCart()->grand_total)
              // setShipmentPrice(10) // optional - just for paypal
              // setProductName("My Product") // optional - just for paypal
              ->ready();

          $refId =  $gateway->refId(); // شماره ارجاع بانک
          $transID = $gateway->transactionId(); // شماره تراکنش

          // در اینجا
          //  شماره تراکنش  بانک را با توجه به نوع ساختار دیتابیس تان
          //  در جداول مورد نیاز و بسته به نیاز سیستم تان
          // ذخیره کنید .
          return $gateway->redirect();

      } catch (\Exception $e) {

          echo $e->getMessage();
      }
  }
}