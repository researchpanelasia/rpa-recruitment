<?php
require 'vendor/autoload.php';

$c = new MyGreeter\Client;
echo $c->getGreeting();
