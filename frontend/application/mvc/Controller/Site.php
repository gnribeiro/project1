<?php

class Controller_Site extends Controller {
    
    public function __construct(){
        parent::__construct();
        
      
        $lang           = ($_SERVER['REQUEST_URI'] === '/en/') ? 'en' : 'pt';
        $this->language =  $lang;
        $this->lang     = array('pt' => 2,'en' => 4);   
        $this->dbsite   = new Model_Site($this->lang[$lang]);
        $menu           = $this->set_menu();

        $this->hedear_data['menu'] =$menu[ $lang ] ;
       
    }

    public function set_menu(){
        return array(
            'pt' => array(
                'home'       => 'HOME' , 
                'empresa'    => 'EMPRESA', 
                'actividade' => 'ACTIVIDADE', 
                'clientes'   => 'CLIENTES' ,
                'eventos'    => 'EVENTOS' , 
                'qsa'        => 'QSA' , 
                'contactos'  => 'CONTACTOS'
            ),
             'en' => array(
                'home'           => 'HOME' , 
                'our_company'    => 'COMPANY', 
                'activities'     => 'ACTIVITIES', 
                'our_clients'    => 'CLIENTS' ,
                'our_events'     => 'EVENTS' , 
                'qsa'            => 'QSA' , 
                'our_contacts'   => 'CONTACTS'
            ),
        );
    }


    public function _pr($obj){
        echo "<pre>" . var_dump($obj) . "</pre>";


    }

    public function index(){
     
        $this->view->slideshow     = $this->slideshow();
        $this->view->company       = $this->get_company();
        $this->view->manutentencao = $this->get_manutentencao();
        $this->view->prodution     = $this->get_prodution();
        $this->view->clients       = $this->get_clients();
        $this->view->events        = $this->get_events();
        $this->view->qsa           = $this->get_qsa();
        $this->view->contacts      = $this->get_contacts();


        $content = $this->view->render('index');
        $this->content($content);
    }

    public function error404(){
        $content = $this->view->render('error404');
        $this->content($content);
    }


    public function slideshow(){
        $this->view->slides =  $this->dbsite->get_data('slideshow' , true); 
        return $this->view->render('slideshow');
    }

    public function get_company(){
        $this->view->company = $this->dbsite->get_data('empresa'); 
        return $this->view->render('company');
    }


    public function get_manutentencao(){
        $this->view->intro  = $this->dbsite->get_data_intro('manutentencao');
        $this->view->data   = $this->dbsite->get_data_intro('manutentencao' ,  0 , false ); 
        $this->view->slides = $this->dbsite->get_field_slides('manutentencao'); 
        return $this->view->render('manutencao/index');
    }


    public function get_prodution(){
        $this->view->intro  = $this->dbsite->get_data_intro('producao'); 
        $this->view->data   = $this->dbsite->get_data_intro('producao' ,  0 , false ); 
        $this->view->slides = $this->dbsite->get_field_slides('producao'); 
        return $this->view->render('manutencao/fabril');
    }

    public function get_clients(){
        $this->view->intro  = $this->dbsite->get_data_intro('clientes'); 
        $this->view->data   = $this->dbsite->get_data_intro('clientes' ,  0 , true ); 
        return $this->view->render('clientes');
    }

    public function get_events(){
        $this->view->intro  = $this->dbsite->get_data_intro('eventos'); 
        $this->view->data   = $this->dbsite->get_data_intro('eventos' ,  0 , true );
        return $this->view->render('events');
    }

    public function get_contacts(){
        $this->view->intro     = $this->dbsite->get_data_intro('contactos'); 
        $this->view->language  = $this->language;
        $this->view->labels    = array(
            'pt' => array(
                'name'   => 'Nome',
                'email'  => 'Email',
                'message' => 'Mensagem',
                'send'    => 'Enviar'
            ),
            'en' => array(
                'name'    => 'Name',
                'email'   => 'Email',
                'message' => 'Message',
                'send'    => 'Send'
            )
        );

        $this->view->message    = array(
            'pt' => 'Mensagem Enviada com Sucesso',
            'en' => 'Message Send with Success'
        ); 


        $this->view->copyrights = array(
            'pt' => date('Y') .' SOMETIM – Engenharia e Serviços, S.A. TODOS OS DIREITOS RESERVADOS.', 
            'en' => ' COPYRIGHT '.date('Y').' ©  SOMETIM – Engenharia e Serviços, S.A.', 
        );

        $this->view->btntop = array(
            'pt' => 'Voltar ao topo', 
            'en' => 'Back to top', 
        );


        return $this->view->render('contacts');
    }

    public function get_qsa(){
        $this->view->intro_pdf = $this->dbsite->get_data_content_download('qsa');
        $this->view->data      = $this->dbsite->get_data_content_download('qsa',  0 , false ); 
        $this->view->pdfs      = $this->dbsite->get_field_pdfs('qsa');
        return $this->view->render('qsa');
    }



    protected function get_footer(){
        
    }

}
