<?php 
class Helper {
    public static function load_file($file) {
        $file = $file . EXT;
        if(is_file($file))
            return include $file;
    }

    public static function load_config($file) {
        $file = APPPATH . 'config/' . $file;
        return self::load_file($file);
    }
}



?>