<?php

require_once 'vendor/autoload.php';
 
$client = new GuzzleHttp\Client();
 
$res = $client->request('GET', 'https://classes.codingbootcamp.cz', [
    'verify' => false
]);
 
echo $res->getBody();