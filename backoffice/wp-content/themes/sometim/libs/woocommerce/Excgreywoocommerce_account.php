<?php 
  
    Class Excgreywoocommerce_account {
        
        function __construct()
        {    
            add_action( 'init', array( __CLASS__, 'edit_password' ) );
            add_action( 'init', array( __CLASS__, 'apply_coupon_checkout' ) );
            add_action( 'init', array( __CLASS__, 'edit_address' ) );
            add_action( 'init', array( __CLASS__, 'process_registration_checkout' ) );
            add_action( 'init', array( __CLASS__, 'update_method_shipping' ) );
        }


        public function apply_coupon_checkout(){
            global$woocommerce ;
          
            if ( 'POST' !== strtoupper( $_SERVER[ 'REQUEST_METHOD' ] ) ) {
                return;
            }


            if(  ! empty( $_POST['coupon_code_checkout'] ) && ! empty( $_POST['apply_coupon_checkout'] ) )
            {
                $woocommerce->cart->add_discount( sanitize_text_field( $_POST['coupon_code_checkout'] ));
                
                if ( ! defined( 'WOOCOMMERCE_CHECKOUT' ) ) {
                    define( 'WOOCOMMERCE_CHECKOUT', true );
                }
            }

        }

        public function edit_address()
        {
            global $wp;

            if ( 'POST' !== strtoupper( $_SERVER[ 'REQUEST_METHOD' ] ) ) {
                return;
            }

            if ( empty( $_POST[ 'action_address_exgry' ] ) || ( $_POST[ 'action_address_exgry' ] !== 'update_user_address_account_exg' ) || empty( $_POST['_wpnonce'] ) ) {
                return;
            }


            wp_verify_nonce( $_POST['_wpnonce'], 'update_user_address_exgry' );
            
            $user_id = get_current_user_id();

            if ( $user_id <= 0 ) {
                return;
            }        

            $load_address = array( 
                'billing'  => WC()->countries->get_address_fields( get_user_meta( get_current_user_id(), 'billing_country', true ),  'billing_'),
                'shipping' => WC()->countries->get_address_fields( get_user_meta( get_current_user_id(), 'shipping_country', true ), 'shipping_')
            );


            foreach ($load_address as  $type => $address) {

                foreach ( $address as $key => $field ) {

                    if ( ! isset( $field['type'] ) ) {
                        $field['type'] = 'text';
                    }

                    // Get Value
                    switch ( $field['type'] ) {
                        case "checkbox" :
                            $_POST[ $key ] = isset( $_POST[ $key ] ) ? 1 : 0;
                        break;
                        default :
                            $_POST[ $key ] = isset( $_POST[ $key ] ) ? wc_clean( $_POST[ $key ] ) : '';
                        break;
                    }

                    // Hook to allow modification of value
                    $_POST[ $key ] = apply_filters( 'woocommerce_process_myaccount_field_' . $key, $_POST[ $key ] );

                    // Validation: Required fields
                    if ( ! empty( $field['required'] ) && empty( $_POST[ $key ] ) ) {
                        wc_add_notice( $field['label'] . ' ' . __( 'na morada de  '.$type.' é um campo obrigatorio.', 'letsgetiton' ), 'error-address' );
                    }

                    if ( ! empty( $_POST[ $key ] ) ) {

                        // Validation rules
                        if ( ! empty( $field['validate'] ) && is_array( $field['validate'] ) ) {
                            foreach ( $field['validate'] as $rule ) {
                                switch ( $rule ) {
                                    case 'postcode' :
                                        $_POST[ $key ] = strtoupper( str_replace( ' ', '', $_POST[ $key ] ) );

                                        if ( ! WC_Validation::is_postcode( $_POST[ $key ], $_POST[ $load_address . '_country' ] ) ) {
                                            wc_add_notice( __( 'Inserir um código postal valido na morada de '. $type .'.', 'letsgetiton' ), 'error-address' );
                                        } else {
                                            $_POST[ $key ] = wc_format_postcode( $_POST[ $key ], $_POST[ $load_address . '_country' ] );
                                        }
                                    break;
                                    case 'phone' :
                                        $_POST[ $key ] = wc_format_phone_number( $_POST[ $key ] );

                                        if ( ! WC_Validation::is_phone( $_POST[ $key ] ) ) {
                                            wc_add_notice( '<strong>' . $field['label'] . '</strong> ' . __( 'na morada de  '.$type.' o número de telefone não é valido.', 'letsgetiton' ), 'error-address' );
                                        }
                                    break;
                                    case 'email' :
                                        $_POST[ $key ] = strtolower( $_POST[ $key ] );

                                        if ( ! is_email( $_POST[ $key ] ) ) {
                                            wc_add_notice( '<strong>' . $field['label'] . '</strong> ' . __( 'na morada de  '.$type.' o email não é valido', 'letsgetiton' ), 'error-address' );
                                        }
                                    break;
                                }
                            }
                        }
                    }
                }
            }

            if ( wc_notice_count( 'error-address' ) == 0 ) {

                foreach ($load_address as  $ckey => $address) {

                    foreach ( $address as $key => $field ) {
                        update_user_meta( $user_id, $key, $_POST[ $key ] );
                    }    
                }        
                
                wc_add_notice( __( 'Morada Alterada com succeso .', 'letsgetiton' ), 'success-address' ); 

                do_action( 'woocommerce_customer_save_address', $user_id, 'billing' );
                do_action( 'woocommerce_customer_save_address', $user_id, 'shipping' );
            }
        
        }



        public function update_adress($address)
        {
            global $wp;

            foreach ( $address as $key => $field ) {

                if ( ! isset( $field['type'] ) ) {
                    $field['type'] = 'text';
                }

                // Get Value
                switch ( $field['type'] ) {
                    case "checkbox" :
                        $_POST[ $key ] = isset( $_POST[ $key ] ) ? 1 : 0;
                    break;
                    default :
                        $_POST[ $key ] = isset( $_POST[ $key ] ) ? wc_clean( $_POST[ $key ] ) : '';
                    break;
                }

                // Hook to allow modification of value
                $_POST[ $key ] = apply_filters( 'woocommerce_process_myaccount_field_' . $key, $_POST[ $key ] );

                // Validation: Required fields
                if ( ! empty( $field['required'] ) && empty( $_POST[ $key ] ) ) {
                    wc_add_notice( $field['label'] . ' ' . __( 'is a required field.', 'woocommerce' ), 'error-address' );
                }

                if ( ! empty( $_POST[ $key ] ) ) {

                    // Validation rules
                    if ( ! empty( $field['validate'] ) && is_array( $field['validate'] ) ) {
                        foreach ( $field['validate'] as $rule ) {
                            switch ( $rule ) {
                                case 'postcode' :
                                    $_POST[ $key ] = strtoupper( str_replace( ' ', '', $_POST[ $key ] ) );

                                    if ( ! WC_Validation::is_postcode( $_POST[ $key ], $_POST[ $load_address . '_country' ] ) ) {
                                        wc_add_notice( __( 'Please enter a valid postcode/ZIP.', 'woocommerce' ), 'error-address' );
                                    } else {
                                        $_POST[ $key ] = wc_format_postcode( $_POST[ $key ], $_POST[ $load_address . '_country' ] );
                                    }
                                break;
                                case 'phone' :
                                    $_POST[ $key ] = wc_format_phone_number( $_POST[ $key ] );

                                    if ( ! WC_Validation::is_phone( $_POST[ $key ] ) ) {
                                        wc_add_notice( '<strong>' . $field['label'] . '</strong> ' . __( 'is not a valid phone number.', 'woocommerce' ), 'error-address' );
                                    }
                                break;
                                case 'email' :
                                    $_POST[ $key ] = strtolower( $_POST[ $key ] );

                                    if ( ! is_email( $_POST[ $key ] ) ) {
                                        wc_add_notice( '<strong>' . $field['label'] . '</strong> ' . __( 'is not a valid email address.', 'woocommerce' ), 'error-address' );
                                    }
                                break;
                            }
                        }
                    }
                }
            }
        }



        public function edit_password()
        {
            if ( 'POST' !== strtoupper( $_SERVER[ 'REQUEST_METHOD' ] ) ) 
            return;
            

            if (  empty( $_POST['_wpnonce'] )  || empty( $_POST[ 'action_account_exgry' ] ) || $_POST[ 'action_account_exgry' ] !== 'update_user_password_account_exg') 
                return;
        

            wp_verify_nonce( $_POST['_wpnonce'], 'update_user_password_exgry' );

            $update = true;
            $errors = new WP_Error();
            $user   = new stdClass();

            $user->ID     = (int) get_current_user_id();
            $current_user = get_user_by( 'id', $user->ID );

            if ( $user->ID <= 0 ) {
                return;
            }

            $pass_cur           = ! empty( $_POST[ 'password_current' ] ) ? $_POST[ 'password_current' ] : '';
            $pass1              = ! empty( $_POST[ 'password_1' ] ) ? $_POST[ 'password_1' ] : '';
            $pass2              = ! empty( $_POST[ 'password_2' ] ) ? $_POST[ 'password_2' ] : '';
            $save_pass          = true;

            if ( ! empty( $pass1 ) && ! wp_check_password( $pass_cur, $current_user->user_pass, $current_user->ID ) ) {
                wc_add_notice( __( 'Your current password is incorrect.', 'woocommerce' ), 'error-password' );       
                $save_pass = false;
            }

            if ( empty( $pass_cur ) && empty( $pass1 ) && empty( $pass2 ) ) {
                wc_add_notice( __( 'Please fill out all password fields.', 'woocommerce' ), 'error-password' );

                $save_pass = false;
            } elseif (empty( $pass_cur ) ) {
              wc_add_notice( __( 'Please enter your current password.', 'letsgetiton' ), 'error-password' );

                $save_pass = false;
            } elseif ( empty( $pass1 )  ) {
              wc_add_notice( __( 'Insirar a nova password', 'letsgetiton' ), 'error-password' );

                $save_pass = false;
            } elseif ( ! empty( $pass1 ) && empty( $pass2 ) ) {
              wc_add_notice( __( 'Confirme a nova password.', 'letsgetiton' ), 'error-password' );

                $save_pass = false;
            } elseif ( ! empty( $pass1 ) && $pass1 !== $pass2 ) {
              wc_add_notice( __( 'Passwords não são iguais.', 'letsgetiton' ), 'error-password' );

                $save_pass = false;
            }

            if ( $pass1 && $save_pass ) {

               $user->user_pass = $pass1;
            }

         
            if ( $errors->get_error_messages() ) {
                foreach ( $errors->get_error_messages() as $error ) {
                   wc_add_notice( $error, 'error-password' );
                }
            }

           if ( wc_notice_count( 'error-password' ) === 0 ) {
                wp_update_user( $user ) ;
                wc_add_notice( __( 'Password Alterada com succeso .', 'letsgetiton' ), 'success-password' ); 
            }
        }

        public static function process_registration_checkout() 
        {
            if ( ! empty( $_POST['register_checkout'] ) ) {


                $checkout = WC()->checkout();

                if(!$checkout) 
                    return;

                wp_verify_nonce( $_POST['register_checkout'], 'woocommerce-register_checkout' );

                if ( 'no' === get_option( 'woocommerce_registration_generate_username' ) ) {
                    $_username = $_POST['username'];
                } else {
                    $_username = '';
                }


                $load_address = array( 
                    'billing'  => $checkout->checkout_fields['billing'],
                    'shipping' => $checkout->checkout_fields['shipping']
                );


                //BILLING AND SHIPPING FIELDS

                foreach ($load_address as  $type => $address) {

                    foreach ( $address as $key => $field ) {

                        if ( ! isset( $field['type'] ) ) {
                                $field['type'] = 'text';
                        }

                            // Get Value
                        switch ( $field['type'] ) {
                            case "checkbox" :
                                $_POST[ $key ] = isset( $_POST[ $key ] ) ? 1 : 0;
                            break;
                            default :
                                $_POST[ $key ] = isset( $_POST[ $key ] ) ? wc_clean( $_POST[ $key ] ) : '';
                            break;
                        }

                        // Hook to allow modification of value
                        $_POST[ $key ] = apply_filters( 'woocommerce_process_myaccount_field_' . $key, $_POST[ $key ] );

                        // Validation: Required fields
                        if ( ! empty( $field['required'] ) && empty( $_POST[ $key ] ) ) {
                            wc_add_notice( $field['label'] . ' ' . __( 'na morada de  '.$type.' é um campo obrigatorio.', 'letsgetiton' ), 'error-address' );
                        }

                        if ( ! empty( $_POST[ $key ] ) ) {

                            // Validation rules
                            if ( ! empty( $field['validate'] ) && is_array( $field['validate'] ) ) {
                                foreach ( $field['validate'] as $rule ) {
                                    switch ( $rule ) {
                                        case 'postcode' :
                                            $_POST[ $key ] = strtoupper( str_replace( ' ', '', $_POST[ $key ] ) );

                                            if ( ! WC_Validation::is_postcode( $_POST[ $key ], $_POST[ $load_address . '_country' ] ) ) {
                                                wc_add_notice( __( 'Inserir um código postal valido na morada de '. $type .'.', 'letsgetiton' ), 'error-address' );
                                            } else {
                                                $_POST[ $key ] = wc_format_postcode( $_POST[ $key ], $_POST[ $load_address . '_country' ] );
                                            }
                                        break;
                                        case 'phone' :
                                            $_POST[ $key ] = wc_format_phone_number( $_POST[ $key ] );

                                            if ( ! WC_Validation::is_phone( $_POST[ $key ] ) ) {
                                                wc_add_notice( '<strong>' . $field['label'] . '</strong> ' . __( 'na morada de  '.$type.' o número de telefone não é valido.', 'letsgetiton' ), 'error-address' );
                                            }
                                        break;
                                        case 'email' :
                                            $_POST[ $key ] = strtolower( $_POST[ $key ] );

                                            if ( ! is_email( $_POST[ $key ] ) ) {
                                                wc_add_notice( '<strong>' . $field['label'] . '</strong> ' . __( 'na morada de  '.$type.' o email não é valido', 'letsgetiton' ), 'error-address' );
                                            }
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }

                $pass1              = ! empty( $_POST[ 'password' ] ) ? $_POST[ 'password' ] : '';
                $pass2              = ! empty( $_POST[ 'password_2' ] ) ? $_POST[ 'password_2' ] : '';
                $save_pass          = true;

                if ( empty( $pass1 )  ) {
                    wc_add_notice( __( 'Por favor insira uma password.', 'letsgetiton' ), 'error-address' );
                    $save_pass = false;
                } 
                elseif ( ! empty( $pass1 ) && empty( $pass2 ) ) {
                    wc_add_notice( __( 'Confirme a  password.', 'letsgetiton' ), 'error-address' );
                    $save_pass = false;
                } 
                elseif ( ! empty( $pass1 ) && $pass1 !== $pass2 ) {
                     wc_add_notice( __( 'Passwords não são iguais.', 'letsgetiton' ), 'error-address' );
                    $save_pass = false;
                }

                if ( $pass1 && $save_pass ) {
                    $_password = $pass1;
                }



                if ( wc_notice_count( 'error-address' ) == 0 ) {
                    
                    try {

                        $validation_error = new WP_Error();
                        $validation_error = apply_filters( 'woocommerce_process_registration_errors', $validation_error, $_username, $_password, $_POST['billing_email'] );

                        if ( $validation_error->get_error_code() ) {
                            throw new Exception( '<strong>' . __( 'Error', 'woocommerce' ) . ':</strong> ' . $validation_error->get_error_message() );
                        }

                    } 
                    catch ( Exception $e ) {
                        wc_add_notice( $e->getMessage(), 'error-address' );
                        return;
                    }

                    $username   = ! empty( $_username ) ? wc_clean( $_username ) : '';
                    $email      = ! empty( $_POST['billing_email'] ) ? sanitize_email( $_POST['billing_email'] ) : '';
                    $password   = $_password;


                    if ( ! empty( $_POST['email_2'] ) ) {
                        wc_add_notice( '<strong>' . __( 'ERROR', 'woocommerce' ) . '</strong>: ' . __( 'Anti-spam field was filled in.', 'woocommerce' ), 'error' );
                        return;
                    }


                    $new_customer = wc_create_new_customer( $email, $username, $password );

                    if ( is_wp_error( $new_customer ) ) {
                        wc_add_notice( $new_customer->get_error_message(), 'error-address' );
                        return;
                    }

                    foreach ($load_address as  $ckey => $address) {

                        foreach ( $address as $key => $field ) {
                            update_user_meta( $new_customer, $key, $_POST[ $key ] );
                        }    
                    }        
                
                    // wc_add_notice( __( 'Morada Alterada com succeso .', 'letsgetiton' ), 'success-address' ); 
                    wc_set_customer_auth_cookie( $new_customer );

                    do_action( 'woocommerce_customer_save_address', $user_id, 'billing' );
                    do_action( 'woocommerce_customer_save_address', $user_id, 'shipping' );

                    //Redirect
                    if ( ! empty( $_POST['redirect'] ) ) {
                        $redirect = esc_url( $_POST['redirect'] );

                    } elseif ( wp_get_referer() ) {
                        $redirect = esc_url( wp_get_referer() );
                    } else {
                        $redirect = esc_url( get_permalink( wc_get_page_id( 'myaccount' ) ) );
                    }

                    wp_redirect( apply_filters( 'woocommerce_registration_redirect', $redirect ) );
                    exit;
                }
            }
        }


        public function update_method_shipping(){

            if ( !empty( $_POST['shipping_method_select'] )  || !empty( $_POST[ 'shipping_method_change' ] ) || $_POST[ 'shipping_method_change' ] === 'true'){

                wp_verify_nonce( $_POST['shipping_method_select'], 'woocommerce-shipping_method_select' );

               
                
                $chosen_shipping_methods = WC()->session->get( 'chosen_shipping_methods' );
                    
                if ( isset( $_POST['shipping_method'] ) && is_array( $_POST['shipping_method'] ) ) {
                    foreach ( $_POST['shipping_method'] as $i => $value ) {
                        $chosen_shipping_methods[ $i ] = wc_clean( $value );
                    }
                }

                WC()->session->set( 'chosen_shipping_methods', $chosen_shipping_methods );
                WC()->cart->calculate_totals();
                    
            }
        }
    }
?>