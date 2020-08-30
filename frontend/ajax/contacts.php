<?php 

require_once 'validFluent.php';

 $output = array();

if( isset( $_POST['data'] ) && $_POST){
    
    parse_str( $_POST['data'] ,  $params)  ;

                $name    = $params['name'];
                $email   = $params['email'];
                $msg     = $params['msg'];
                $lang    = $params['lang'];
                

                $validation = new ValidFluent($params);

                $message = array(
                    'pt' => array(
                        'required' => 'Prenchimento Obrigatório',
                        'email'    => 'Email inválido',
                    ),

                    'en' => array(
                        'required' => 'Mandatory field',
                        'email'    => 'Invalid Email',
                    )

                );


                 $validation->name('name')
                     ->required($message[$lang]['required']);

                $validation->name('email')
                     ->required($message[$lang]['required'])
                     ->email($message[$lang]['email']);

                $validation->name('msg')
                     ->required($message[$lang]['required']);
      



                if(!$validation->isGroupValid()){
                
                    $errors = array(
                        'name'  => $validation->getError('name'),
                        'email'  => $validation->getError('email'),
                        'msg'    => $validation->getError('msg')
                    );

                    $output = array(
                        'error'   => 1,
                        'message' =>  json_encode( $errors  )
                    );
                }
                else{
              
                  $msg = sprintf("Mensagem de : %s <br> Com o email: %s <br> Enviou a seguinte mensagem: %s" , $name  , $email  , $msg);
 
                  //$to      = 'gnoribeiro@gmail.com';
                  $to      = 'geral@sometim.com';
                  $subject = 'Mensagen do Formulario de contacto do site';
                  $messages = $msg;
                  $headers = "From: " . $email . "\r\n";
                  $headers .= "Reply-To: ". strip_tags($_POST['req-email']) . "\r\n";
                  $headers .= "CC: susan@example.com\r\n";
                  $headers .= "MIME-Version: 1.0\r\n";
                  $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
      
                  mail($to, $subject, $messages, $headers);

                    $output = array(
                        'error'   => 0,
                        'message' =>  json_encode( $msg  )
                    );
                 }

                  echo    json_encode( $output);
            }
            
            
           
?>