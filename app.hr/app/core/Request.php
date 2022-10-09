<?php

class Request
{
    public static function getRuta()
    {
        $ruta='/';
        if(isset($_SERVER['REDICTED_PATH_INFO'])){
            $ruta = $_SERVER['REDICTED_PATH_INFO'];
        }else if (isset($_SERVER['REQUEST_URI'])){
            $ruta = $_SERVER['REQUEST_URI'];
        }

    return $ruta;
    }
    

}