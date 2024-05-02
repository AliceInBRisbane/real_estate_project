<?php
//paypal configuration
require_once "vendor/autoload.php"; 
use Omnipay\Omnipay;
 
define('CLIENT_ID', 'AayfS3EwJqwEy6ZeL-6ba-U5y5XoynKz42xqTup6Gx5gLZ7yrkE3rfvSmHJ4eUdRyC69RBJjC4Z5DkhB');
define('CLIENT_SECRET', 'EPCZh4Xor7jm0X7tvy57w4ITPrPMRqQZFwS7WcRQ7wm8371Pd0jXStj4z8a0Sd2WGzZz0ICI0JweK2-w');
 
define('PAYPAL_RETURN_URL', BASE_URL.'agent-paypal-success.php');
define('PAYPAL_CANCEL_URL', BASE_URL.'agent-paypal-cancel.php');
define('PAYPAL_CURRENCY', 'USD'); // set your currency here
 
$gateway = Omnipay::create('PayPal_Rest');
$gateway->setClientId(CLIENT_ID);
$gateway->setSecret(CLIENT_SECRET);
$gateway->setTestMode(true); //set it to 'false' when go live

?>