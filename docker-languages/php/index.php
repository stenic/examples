<?php

require_once("vendor/autoload.php");

use Monolog\Logger;
use Monolog\Handler\ErrorLogHandler;

$log = new Logger('log');
$log->pushHandler(new ErrorLogHandler());

$log->info('Starting app');
