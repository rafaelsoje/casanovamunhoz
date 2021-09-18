<?php
use core\Router;

$router = new Router();

$router->get('/', 'HomeController@index');
$router->post('/', 'HomeController@action');

$router->get('/login', 'LoginController@index');
$router->post('/login', 'LoginController@login');

$router->post('/confirma', 'HomeController@confirm');

$router->get('/obrigado', 'HomeController@obrigado');
$router->get('/erro', 'HomeController@erro');

$router->get('/admin', 'AdminController@index');
$router->post('/admin', 'AdminController@add');
$router->get('/admin/sair', 'AdminController@sair');
$router->post('/admin/edit', 'AdminController@update');
$router->get('/admin/disponivel', 'AdminController@disponivel');
$router->get('/admin/reservado', 'AdminController@reservado');
$router->get('/admin/edit/{id}', 'AdminController@edit');
$router->get('/admin/delete/{id}', 'AdminController@delete');
