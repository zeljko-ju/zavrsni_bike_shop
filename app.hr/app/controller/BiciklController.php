<?php

class SmjerController extends Controller
{

    private $putanja='privatno' . 
    DIRECTORY_SEPARATOR . 'smjer' . 
    DIRECTORY_SEPARATOR;


    public function index()
    {
        $this->view->render($this->putanja .  'index', [
            'shop'=>'bikeshop',
            'brojevi'=>[
                1,66,55,44
            ]
            ]);

    }


}