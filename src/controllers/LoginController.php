<?php

namespace src\controllers;


use core\Controller;
use src\handlers\UserHandler;
use src\models\User;

class LoginController extends Controller
{
    public function index()
    {
        $this->render('login', [
            'title' => 'Login'
        ]);

    }

    public function login()
    {
        $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
        $password = filter_input(INPUT_POST, 'password');

        if($email && $password) {
            $user = new UserHandler();
            $result = $user->verifyLogin($email, md5($password));
            if($result){
                $_SESSION['user'] = $result['id'];
                $this->redirect('/admin');

            }else {
                $this->render('login', [
                    'flash' => 'Email e ou senha inválidos!'
                ]);

            }
        }else{
            $this->render('login', [
                'flash' => 'Email e ou senha inválidos!'
            ]);
            exit();
        }
    }
}