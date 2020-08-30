<?php 
    class Model_Site extends Model {
        
        public function __construct($lang){
            parent::__construct();
            $this->lang = $lang;
        }

      


        public function get_field_slides($post_type){

            $slides = array();
            $mant   = $this->get_data_intro($post_type ,  0 , false );
            
            foreach ($mant as $values) {
                if($this->count_slides($values->id)){
                       
                    foreach ($this->get_slides($values->id) as  $value) {
                           $file     = $this->get_attached_file($value->meta_value);

                           $slides[$values->id][] =  $file->meta_value;      
                    }
                }   
            }
            return $slides;
        }


        public function get_field_pdfs($post_type){
            $pdfs    = array();
            $pdfs_ID = $this->get_data_content_download($post_type );

            foreach ($pdfs_ID as $value) {
                $titles_pdf =  $this->get_pdf_title($value->id);
                $files_pdf  =  $this->get_pdf_file($value->id);

                foreach ($titles_pdf as $key => $val) {
                    $pdfs[$key]['title'] = $val->meta_value;
                }

                foreach ($files_pdf as $k => $v) {
                    $file     = $this->get_attached_file($v->meta_value);
                    $pdfs[$k]['file'] = $file->meta_value;   
                }
            }
       
            return $pdfs;
        }
        

        public function  get_data($post_type , $thumb = false){
           $data    = array();
           $results = $this->get_posts($post_type );
           $data    = $this->set_data($results , $thumb ) ;

           return $data;
        }


        public function  get_data_intro($post_type , $intro = 1 , $thumb = false ){
           $data    = array();
           $results = $this->get_posts_intro($post_type , $intro );
           $data    = $this->set_data($results, $thumb);
           return $data;
        }


        public function  get_data_content_download($post_type , $intro = 1 , $thumb = false ){
            $data    = array();
            $results = $this->get_content_download($post_type , $intro );
            $data    = $this->set_data($results, $thumb);

           return $data;
        }


        
        protected function  set_data($results , $thumb=false){
            $data = array();
            
            if( count($results) ){
                foreach ($results as $value) {
                  
                    $result =  array(
                        'id'           => $value->id , 
                        'post_content' => $value->post_content , 
                        'post_title'   => $value->post_title, 
                        'post_excerpt' => $value->post_excerpt, 
                    );

                    if($thumb){
                       $image  =  $this->get_thumb($value->id , true);
                       $result['image' ]  =  $image;
                    }

                    $data[] = (object) $result;
                }
           }
           return $data;

        }


         protected function  count_slides($id){
            $sql = "select  meta_value  FROM wp_postmeta  where meta_key like 'slide_content' and post_id = {$id}";
            return ORM::for_table('wp_postmeta')->raw_query($sql)->find_one();
         }


        protected function  get_slides($id){
            $sql = "SELECT meta_value FROM `wp_postmeta` WHERE `post_id` = {$id} and `meta_key` REGEXP '^slide_content_[0-9]*_slide_image$' order by meta_id asc";
            return ORM::for_table('wp_postmeta')->raw_query($sql)->find_many();
        }

        protected function  get_pdf_title($id){
            $sql = "SELECT meta_value FROM `wp_postmeta` WHERE `post_id` = {$id} and `meta_key` REGEXP '^Files_download_[0-9]*_title_download$' order by meta_id asc";
            return ORM::for_table('wp_postmeta')->raw_query($sql)->find_many();
        }

         protected function  get_pdf_file($id){
            $sql = "SELECT meta_value FROM `wp_postmeta` WHERE `post_id` = {$id} and `meta_key` REGEXP '^Files_download_[0-9]*_file_download$' order by meta_id asc";
            return ORM::for_table('wp_postmeta')->raw_query($sql)->find_many();
        }


        protected function  get_posts($post_type){
            $sql = "SELECT  wp_posts.ID as id, wp_posts.post_content as post_content, wp_posts.post_title as post_title, wp_posts.post_excerpt as post_excerpt
                 FROM wp_posts  INNER JOIN wp_term_relationships 
                 ON (wp_posts.ID = wp_term_relationships.object_id) 
                 WHERE   ( wp_term_relationships.term_taxonomy_id IN ({$this->lang}))
                 AND wp_posts.post_type = '{$post_type}' 
                 AND (wp_posts.post_status = 'publish' OR wp_posts.post_status = 'private') 
                 GROUP BY wp_posts.ID ORDER BY wp_posts.menu_order ASC ";


            return ORM::for_table('wp_posts')->raw_query( $sql)->find_many();
        }


        protected function  get_posts_intro($post_type , $intro = 1){
             $sql = "SELECT  wp_posts.ID as id, wp_posts.post_content as post_content, wp_posts.post_title as post_title, wp_posts.post_excerpt as post_excerpt 
             FROM wp_posts  INNER JOIN wp_term_relationships 
             ON (wp_posts.ID = wp_term_relationships.object_id) 
             INNER JOIN wp_postmeta ON ( wp_posts.ID = wp_postmeta.post_id ) 
             WHERE  ( wp_term_relationships.term_taxonomy_id IN ({$this->lang})) 
             AND wp_posts.post_type = '{$post_type}' 
             AND (wp_posts.post_status = 'publish' OR wp_posts.post_status = 'private') 
             AND ( ( wp_postmeta.meta_key = 'tipo_into' AND CAST(wp_postmeta.meta_value AS CHAR) = '{$intro}' ))
            GROUP BY wp_posts.ID ORDER BY wp_posts.menu_order  ";


            return ORM::for_table('wp_posts')->raw_query( $sql)->find_many();
        }

        protected function  get_content_download($post_type , $content_download = true){
             $sql = "SELECT  wp_posts.ID as id, wp_posts.post_content as post_content, wp_posts.post_title as post_title, wp_posts.post_excerpt as post_excerpt 
             FROM wp_posts  INNER JOIN wp_term_relationships 
             ON (wp_posts.ID = wp_term_relationships.object_id) 
             INNER JOIN wp_postmeta ON ( wp_posts.ID = wp_postmeta.post_id ) 
             WHERE  ( wp_term_relationships.term_taxonomy_id IN ({$this->lang})) 
             AND wp_posts.post_type = '{$post_type}' 
             AND (wp_posts.post_status = 'publish' OR wp_posts.post_status = 'private') 
             AND ( ( wp_postmeta.meta_key = 'content_download' AND CAST(wp_postmeta.meta_value AS CHAR) = '{$content_download}' ))
            GROUP BY wp_posts.ID ORDER BY wp_posts.menu_order  ";

            return ORM::for_table('wp_posts')->raw_query( $sql)->find_many();
        }

        





        public function  get_thumb($id , $file = false){
            $sql = "SELECT meta_value  
                    FROM   wp_postmeta  
                    WHERE  meta_key like '_wp_attachment_metadata' 
                    AND    post_id in (select  meta_value  FROM wp_postmeta  where meta_key like '_thumbnail_id' and post_id  = {$id} )"; 

            $data = ORM::for_table('wp_postmeta')->raw_query( $sql)->find_one();
            
            if($data){
                if($file){
                     $thumb = unserialize($data->meta_value); 
                     return $thumb['file'];
                }
            }
            
            return $data;
             
        }

          public function  get_attached_file($id ){
            $sql = "SELECT meta_value 
                    FROM   wp_postmeta 
                    WHERE  post_id = {$id}  
                    AND    meta_key like '_wp_attached_file'"; 

            $data = ORM::for_table('wp_postmeta')->raw_query( $sql)->find_one();
            
            return $data;
             
        }

    }

 ?>