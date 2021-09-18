<?php

namespace src\controllers;

use \core\Controller;
use \core\Email;
use src\handlers\UserHandler;
use src\handlers\AdminHandler;
use src\handlers\EmailHandler;
use src\models\Product;


class HomeController extends Controller
{

    public function index($flash = null)
    {
        $result = $this->listHome();
        $this->render('home', [
            'list' => $result,
            'flash' => $flash
        ]);
    }

    public function listHome(){
        $list = new AdminHandler();
        return $list->listHome();

    }

    public function action(){
       $name = filter_input(INPUT_POST, 'name');
       $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);

       if(isset($_POST['check'])){
           $check = $_POST['check'];
            $prod = new AdminHandler();
            foreach ($check as $item) {
                $array[] = $prod->productId($item);
            }

           $this->render('confirm', [
               'name' => $name,
               'email' => $email,
               'check' => $array
           ]);

       }else{
           $this->index('Nenhum item selecionado. Por favor selecione um item.');
       }
    }

    public function confirm(){
        $confirm = new AdminHandler();
        $produto = $confirm->getProductArray($_POST['item']);

        $email = new Email();
        $result = $email->send($_POST['name'], $_POST['email'], $produto);

        if($result){
            $confirm->updateProduct($_POST['name'], $_POST['email'], $_POST['item']);
            $email->recibo($_POST['name'], $_POST['email'], $produto);  
            $this->redirect('/obrigado');
        }else{            
            $this->redirect('/erro');
        }
    }

    public function obrigado(){
        $this->render('obrigado');
    }

    public function erro(){
        $this->render('erro');
    }

}