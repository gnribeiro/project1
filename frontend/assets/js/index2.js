//@codekit-prepend "vendor/GreenSock-js/src/minified/plugins/CSSPlugin.min.js"
//@codekit-prepend "vendor/GreenSock-js/src/minified/easing/EasePack.min.js"
//@codekit-prepend "vendor/GreenSock-js/src/minified/TweenLite.min.js"




jQuery(function($){

if(jQuery("#hp-slideshow .hp-slide").length > 1){
    var hpslideshow = jQuery("#hp-slideshow").owlCarousel({
    items :1,
    loop  : true,
    autoplay:true,
    autoplayHoverPause:true,
    autoplaySpeed:1000,
    navSpeed:1000,
    dotsSpeed:600,
    autoplayTimeout:4000,
    nav:true,
    navContainer:'#nav-crtl',
    dotsContainer:'#nav-dot'
  });
};


jQuery(function($){

var SlideDownUp = function(elem , options){
      this.elem   =  $(elem); 
      this.options = options;
      this.init();
}


SlideDownUp.prototype = {
    buttons    : undefined,
    contents   : undefined,
    settings   : {
        },
       
        init : function(){
        
             this.buttons  = this.elem.find("*[data-slide-btns]");
             this.contents = this.elem.find("*[data-slide-contents]");

            this.events();
        },

        events :function(){
            var self = this;
            
            this.buttons.each(function(index, elem){
               $(elem).on('click' , function(){
                    self.select(index);
                }) 
            })
            
        },

        select  : function(index){
            var content       = this.contents[index];
            var contentHeight = $("> div" , content).height();
          

            if( $(content).hasClass("selected") ){
                this.slideUp(content);
                $(content).removeClass("selected");
             }
             else{
                var self = this;
                
                var callback = function(){
                    
                    $(content).addClass("selected");
                    self.slideDown(content, contentHeight);
                };

                if(this.deselect(callback))
                        callback();
             }
        },

        deselect : function(callback){
            if(content = $(".sub-content.selected" , this.elem)[0]){
                $(content).removeClass("selected");
                this.slideUp(content, callback);
                 return false;
            }

            return true;
        },

        slideUp:function(elem, onEndCallback ){
            //onEndCallback = onEndCallback || function(){};
            // baseFx.animateProperty({
            //     node: elem,
            //     properties: { height: 0 },
            //     onEnd: onEndCallback
            // }).play();
            TweenLite.to($(elem), 0.6, {height:0 , onComplete:onEndCallback});
        },

        slideDown:function(elem , h){
            // baseFx.animateProperty({
            //     node: elem,
            //     properties: { height: h }
            // }).play();

            TweenLite.to($(elem), 1, {height:h});
        },


        merge : function(options){

          if(options !== undefined){
            for(var opt in options){
                if(this.settings.hasOwnProperty(opt ) !== undefined)
                    this.settings[opt] = options[opt];
            }
                
          }
        },
    }
    window.SlideDownUp = SlideDownUp;
})





function setWidthContent(){
   var w = ( ( jQuery(window).width() - jQuery(".container").width() ) / 2 ) + 378;
    desc = jQuery(".sub-content .desc " , "#maintenance").css('width' , w + "px"); 
}



$(document).ready(function(){
    setWidthContent();
    var maintenance = new SlideDownUp("#maintenance");
});

$(window).on("resize", setWidthContent);
