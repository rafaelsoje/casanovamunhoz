<?php

namespace core;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

class Email
{

    public function send($name, $email, $array)
    {   
        $mail = new PHPMailer(true);        

        try {
        $mail->isSMTP();                                           
        $mail->Host       = '';                   
        $mail->SMTPAuth   = true;                                  
        $mail->Username   = '';                    
        $mail->Password   = '';     
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;    
        $mail->Port       = 587;
        $mail ->charSet   = "UTF-8"; 
        $mail->setFrom('');       
        $mail->addAddress($email);              
        $mail->addReplyTo('');
        
        $mail->isHTML(true);                          
        $mail->Subject = 'Lista de casa nova';
        $mail->Body = '<h3>'.$name . ',</h3>';
        $mail->Body .= '<p>Só pra confirmar e te lembrar, você selecionou o presente,</p>';        

        foreach($array as $item)
        {
            $mail->Body .= '<p><b>'.$item['name']. '</b></p>';        
        }

        $mail->Body .= '<p>e a forma de entrega pode ser pelo pix ...</P>';
        $mail->Body .= '<p>ou envio pela internet para o endereço ...</p>';
        $mail->Body .= '<p>Agredeço sua participação, até o Open House em segurança,</p>';
        
        

        $mail->send();        
        return true;
        } catch (Exception $e) {
            return false;            
        }   
    }

    public function recibo($name, $email, $array){

        $mail = new PHPMailer(true);  
        try {
        $mail->isSMTP();                                          
        $mail->Host       = '';                  
        $mail->SMTPAuth   = true;                                 
        $mail->Username   = '';                    
        $mail->Password   = '';                               
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; 
        $mail->Port       = 587;
        $mail ->charSet   = "UTF-8";  
        $mail->setFrom('');
        $mail->addAddress(''); 
        $mail->isHTML(true);                         
        $mail->Subject = 'Item selecionado';
        $mail->Body    = '<h3>...</h3>';
        $mail->Body    .= $name.' selecionou o seguinte item da lista</p>';  

        foreach($array as $item)
        {
            $mail->Body .= '<p><b>'.$item['name']. '</b></p>';        
        }

        $mail->send();
        
        return true;
        } catch (Exception $e) {
        
            return false;
        }   
 
    }
}