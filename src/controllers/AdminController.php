<?php

namespace src\controllers;


use core\Controller;
use src\handlers\AdminHandler;
use src\models\Product;

class AdminController extends Controller
{
    public function __construct()
    {
        if(!$_SESSION['user']){
            $this->redirect('/login');
        }
    }

    public function index()
    {
        $list = $this->getList();
        if($list){
            $this->render('admin', [
                'list' => $list,

            ]);
        }else{
            $this->render('admin');
        }

    }

    public function disponivel(){
        $dispo = new AdminHandler();
        $result = $dispo->intemDisponivel();

        $this->render('disponivel', [
            'list' => $result
        ]);
    }

    public function reservado(){

        $dispo = new AdminHandler();
        $result = $dispo->intemReservado();

        $this->render('reservado', [
            'list' => $result
        ]);
    }

    public function getList(){
        $list = new AdminHandler();
        return $list->getList();
    }

    public function add(){
        $produto = filter_input(INPUT_POST, 'produto');
        $marca = filter_input(INPUT_POST, 'marca') ? filter_input(INPUT_POST, 'marca'): '';
        $link = filter_input(INPUT_POST, 'link') ? filter_input(INPUT_POST, 'link') : '' ;

        $add = new AdminHandler();
        $add->addPrudoto($produto, $marca, $link);
        $this->redirect('/admin');
    }

    public function edit($id){
        $product = new AdminHandler();
        $result = $product->getPtoduct($id);

        $this->render('edit',[
            'product' => $result
        ]);
    }

    public function update(){

        $id = filter_input(INPUT_POST, 'id');
        $name = filter_input(INPUT_POST, 'name');
        $marca = filter_input(INPUT_POST, 'marca');
        $link = filter_input(INPUT_POST, 'link');

        $update = new AdminHandler();
        $update->update($id, $name, $marca, $link);

        $this->redirect('/admin');
    }

    public function delete($id){
//
        $del = new AdminHandler();
        $del->delete($id);

        $this->redirect('/admin');
    }

    public function sair(){
        session_destroy();
        $this->redirect('/login');
    }

}