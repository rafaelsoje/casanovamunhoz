<?php
/**
 * Created by PhpStorm.
 * User: Rafael
 * Date: 14/01/2021
 * Time: 22:37
 */

namespace src\handlers;

use src\models\Product;

class AdminHandler
{

    public function getList(){
        $result = Product::select()->orderBy('name', 'asc')->get();
        return $result;

    }

    public function listHome(){
        $result = Product::select()->where('status', 0)->orderBy('name', 'asc')->get();
        return $result;
    }

    public function getPtoduct($id){
        return Product::select()->where('id', $id)->one();
    }

    public function productId($id){
        return Product::select()->where('id', $id)->one();
    }

    public function getProductArray($array){
        
        foreach($array as $item){            
            $produto[] = Product::select()->where('id', $item)->one();
        }
        
        return $produto;
    }

    public function intemDisponivel(){
        return Product::select()->where('status', 0)->get();
    }
    public function intemReservado(){
        return Product::select()->where('status', 1)->get();
    }

    public function addPrudoto($produto, $marca, $link)
    {
        Product::insert([
            'name' => $produto,
            'brand' => $marca,
            'link' => $link
        ])->execute();
    }

    public function update($id, $name, $marca, $link){

        var_dump($id ,$name, $marca, $link);
        Product::update()->set([
            'name' => $name,
            'brand'=> $marca,
            'link' => $link
        ])->where('id', $id)
        ->execute();

    }


    public function updateProduct($name, $email, $check){
        $date = new \DateTime();
        $newdate = $date->format('Y-m-d H:i:s');

        foreach ($check as $id) {
            Product::update()->set([
                'status' => 1,
                'client' => $name,
                'contato' => $email,
                'date_sale' => $newdate,
                'email_confirm' => 1
            ])
            ->where('id', $id)
            ->execute();
        }

    }

    public function delete($id){
        var_dump($id);
        Product::delete()->where('id', $id)->execute();
    }

}