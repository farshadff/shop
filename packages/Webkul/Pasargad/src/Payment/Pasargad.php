<?php


namespace Webkul\Pasargad\Payment;


use Larabookir\Gateway\Gateway;
use Webkul\Payment\Payment\Payment;


class Pasargad extends Payment
{
    /**
     * Payment method code
     *
     * @var string
     */
    protected $code  = 'bank_pasargad';

    public function getRedirectUrl()
    {
        return route('pasargad.request');
    }

}