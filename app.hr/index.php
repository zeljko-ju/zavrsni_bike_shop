<?php

//phpinfo();

define('BP',__DIR__. DIRECTORY_SEPARATOR);
define('BP_APP', BP . 'app' . DIRECTORY_SEPARATOR);



$zaAutoload = [
    BP_APP . 'core',
    BP_APP . 'contoller',
    BP_APP . 'model'
   
];

$putanje = implode(PATH_SEPARATOR,$zaAutoload);

$putanja = implode(PATH_SEPARATOR,$zaAutoload);
set_include_path($putanja);

spl_autoload_register(function($klasa){
   
    $putanje = explode(PATH_SEPARATOR,get_include_path());
     foreach($putanje as $p){
         
         $datoteka = $p . DIRECTORY_SEPARATOR . $klasa . '.php';
         
         if(file_exists($datoteka)){
             require_once $datoteka;
             break;
         }
     }
 });
 
// App::start();