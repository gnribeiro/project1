jQuery(function($){

    $("#menumobile").on('click' , function(){
        var header = $("header.main");
        if(header.hasClass('selected')){
           header.removeClass('selected'); 
        }
        else{
            header.addClass('selected');
        }
    })


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


    slideshows =[1,  2];

    for(var index in slideshows){

        if(jQuery(".main-slideshow-maintenance-"+slideshows[index]+" .hp-slide").length > 1){
            var hpslideshow = jQuery(".main-slideshow-maintenance-"+slideshows[index]).owlCarousel({
            items :1,
            loop  : true,
            autoplay:false,
            autoplayHoverPause:true,
            autoplaySpeed:1000,
            navSpeed:1000,
            dotsSpeed:600,
            autoplayTimeout:4000,
            nav:true,
            navContainer:'#nav-crtl-maintenance-'+slideshows[index],
            dotsContainer:'#nav-dot-maintenance-'+slideshows[index],
            dots:false
          });

        };

    }

    slideshows =[1,  2];

    for(var index in slideshows){
        if(jQuery(".main-slideshow-prodution-"+slideshows[index]+" .hp-slide").length > 1){
            var hpslideshow = jQuery(".main-slideshow-prodution-"+slideshows[index]).owlCarousel({
            items :1,
            loop  : true,
            autoplay:false,
            autoplayHoverPause:true,
            autoplaySpeed:1000,
            navSpeed:1000,
            dotsSpeed:600,
            autoplayTimeout:4000,
            nav:true,
            navContainer:'#nav-crtl-prodution-'+slideshows[index],
            dotsContainer:'#nav-dot-prodution-'+slideshows[index],
            dots:false
          });

        };

    }

      if(jQuery(".main-slideshow-events .hp-slide").length > 1){
            var hpslideshow = jQuery(".main-slideshow-events").owlCarousel({
            items :1,
            autoplay:false,
            autoplayHoverPause:true,
            autoplaySpeed:1000,
            navSpeed:1000,
            dotsSpeed:600,
            autoplayTimeout:4000,
            nav:true,
            navContainer:'#nav-crtl-events ',
            dotsContainer:'#nav-dot-events ',
            dots:false
          });

        };

        if(jQuery(".clients-logs  .hp-slide").length > 1){
            var hpslideshow = jQuery(".clients-logs ").owlCarousel({
            items :4,
            autoplay:false,
            autoplayHoverPause:true,
            autoplaySpeed:1000,
            navSpeed:1000,
            dotsSpeed:600,
            autoplayTimeout:4000,
            nav:true,
            navContainer:'#nav-crtl-logs ',
            
            dots:false
          });

        };





    function initialize() {
        var mapCanvas = document.getElementById('maps');
        var myLatLng  = new google.maps.LatLng(-8.955046, 13.390871);
        var mapOptions = {
            center: myLatLng,
            zoom: 18,
            scrollwheel: false,
            navigationControl: true,
            mapTypeControl: true,
            scaleControl: true,
            draggable: false,
             mapTypeId: google.maps.MapTypeId.SATELLITE
            //mapTypeId: google.maps.MapTypeId.ROADMAP
        }
       
        var map = new google.maps.Map(mapCanvas, mapOptions)

        var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          icon: '/assets/images/marke.png'
        });
      
        var contentBox = $(
            '<div class="marker-info-win">'+
            '<ul>'+
            '<li><span>M.</span><span style="width: 165px;">Estrada de Calumbo, Pólo Industrial Tubogás, nº 31-32 <br /> Viana Luanda</span></li>'+
            '<li><span>T.</span>  +244 915 931 891</li>'+
            '<li><span>E.</span> geral@sometim.com</li>'+
            '</ul>'+

            '</div>'
            )
        
    var myOptions = {
         content: contentBox[0]
        ,disableAutoPan: false
        ,maxWidth: 0
        ,pixelOffset: new google.maps.Size(-13, -186)
        ,zIndex: null
        ,boxStyle: { 
          background: "url('/assets/images/infobox.png') transparent no-repeat 0 0"
          ,opacity: 1
          ,width: "222px"
          ,height: "145px"
         }
        ,closeBoxMargin: "10px 2px 2px 2px"
        ,closeBoxURL: "/assets/images/transpatent.png"
        ,infoBoxClearance: new google.maps.Size(1, 1)
        ,isHidden: false
        ,pane: "floatPane"
        ,enableEventPropagation: false
    };

        var infowindow = new InfoBox(myOptions);
        infowindow.open(map, marker);
        

        google.maps.event.addDomListener(marker, "click", function(event) {
             infowindow.open(map,marker);
        });

      }


      google.maps.event.addDomListener(window, 'load', initialize);

});



;( function( window ) {
    
    'use strict';

    var docElem = window.document.documentElement;

    function getViewportH() {
        var client = docElem['clientHeight'],
            inner = window['innerHeight'];
        
        if( client < inner )
            return inner;
        else
            return client;
    }

    function scrollY() {
        return window.pageYOffset || docElem.scrollTop;
    }

    // http://stackoverflow.com/a/5598797/989439
    function getOffset( el ) {
        var offsetTop = 0, offsetLeft = 0;
        do {
            if ( !isNaN( el.offsetTop ) ) {
                offsetTop += el.offsetTop;
            }
            if ( !isNaN( el.offsetLeft ) ) {
                offsetLeft += el.offsetLeft;
            }
        } while( el = el.offsetParent )

        return {
            top : offsetTop,
            left : offsetLeft
        }
    }

    function inViewport( el, h ) {
        var elH = el.offsetHeight,
            scrolled = scrollY(),
            viewed = scrolled + getViewportH(),
            elTop = getOffset(el).top,
            elBottom = elTop + elH,
            // if 0, the element is considered in the viewport as soon as it enters.
            // if 1, the element is considered in the viewport only when it's fully inside
            // value in percentage (1 >= h >= 0)
            h = h || 0;

        return (elTop + elH * h) <= viewed && (elBottom) >= scrolled;
    }

    function extend( a, b ) {
        for( var key in b ) { 
            if( b.hasOwnProperty( key ) ) {
                a[key] = b[key];
            }
        }
        return a;
    }

    function cbpScroller( el, options ) {   
        this.el = el;
        this.options = extend( this.defaults, options );
        this._init();
    }

    cbpScroller.prototype = {
        defaults : {
            // The viewportFactor defines how much of the appearing item has to be visible in order to trigger the animation
            // if we'd use a value of 0, this would mean that it would add the animation class as soon as the item is in the viewport. 
            // If we were to use the value of 1, the animation would only be triggered when we see all of the item in the viewport (100% of it)
            viewportFactor : 0.2
        },
        _init : function() {
            if( Modernizr.touch ) return;

            this.sections = $( '.cbp-so-section' );
            this.didScroll = false;

            var self = this;
            // the sections already shown...
            this.sections.each( function( i , el ) {
                if( !inViewport( el ) ) {
                    $( el).addClass('cbp-so-init' );
                }
            } );

            var scrollHandler = function() {
                    if( !self.didScroll ) {
                        self.didScroll = true;
                        setTimeout( function() { self._scrollPage(); }, 60 );
                    }
                },
                resizeHandler = function() {
                    function delayed() {
                        self._scrollPage();
                        self.resizeTimeout = null;
                    }
                    if ( self.resizeTimeout ) {
                        clearTimeout( self.resizeTimeout );
                    }
                    self.resizeTimeout = setTimeout( delayed, 200 );
                };

            window.addEventListener( 'scroll', scrollHandler, false );
            window.addEventListener( 'resize', resizeHandler, false );
        },
        _scrollPage : function() {
            var self = this;
           
             this.sections.each( function(  i , el ) {
                if( inViewport( el, self.options.viewportFactor ) ) {
                    $( el).addClass('cbp-so-animate' );
                }
                else {
                    // this add class init if it doesn't have it. This will ensure that the items initially in the viewport will also animate on scroll
                  
                    $( el).addClass('cbp-so-init' );
                    //$( el).removeClass('cbp-so-animate' );
                  
                }
            });
            this.didScroll = false;
        }
    }

    // add to global namespace
    window.cbpScroller = cbpScroller;

} )( window );




(function($ , window){

    var MenuSlide = function(elem , options){
          this.elem   =  $(elem); 
          this.options = options;
          this.init();
    }

    MenuSlide.prototype = {
        settings : { compensation : 0, btntop:undefined},
        hashname     : undefined,
        sections : [],   
        buttons : [],
        hasClick: false,
        
        init : function(options){  
            this.merge();
            this.hashname = $(location).attr('hash');
            this.createdSections();
            this.events();

        },


        createdSections : function(options){  
   
            this.buttons = this.elem.find("a");
            var sections = $('*[data-page-section="true"]')
            var count    = 0;
            var self     = this;

            this.buttons.each(function(i , e){
                name =  $(e).attr("href");

                self.sections.push({ 
                    'name'    : name.replace("#" , ''),
                    'section' : sections[count]
                });

                count++;
            });
        },

        events : function(){
            var self = this;

            $(window).on("load", function(){
                var name =  (self.hashname == '') ? $(self.buttons[0]).attr("href") : self.hashname;
                     self.hasClick = true;
                self.onloadSelect( name );
            });
            
            this.buttons.on("click", function(event){ 
                event.preventDefault(); 
                var header = $("header.main");
                if(header.hasClass('selected')){
                   header.removeClass('selected'); 
                }
                var name = $(this).attr("href");
                self.hasClick = true;

                self.onloadSelect(name);
            
            });

            if(this.settings.btntop !== undefined){
                $(this.settings.btntop).on("click", function(event){ 
                    event.preventDefault(); 
                    var name = $(self.buttons[0]).attr("href") ;
                    self.hasClick = true;
                    self.onloadSelect(name);
                });
            }

            
            $(window).on("scroll", function(){self.select()} );
        },

        onloadSelect: function(name){
            var self = this;
            
            if(name ==='')
                return

            scrollto = name.replace('#', '');

            var section = jQuery.grep(this.sections, function( a ) {
                if( a.name === scrollto)
                return a;
            });


            $('html, body').animate({scrollTop:$(section[0].section ).offset().top - self.settings.compensation + 1}, 'slow' , function(){self.hasClick = false;});
                
            this.selectMenu(scrollto);
        },

        select : function(){
            var scrollnr = $(window).scrollTop();
            var self     = this;

            for(index in self.sections){

                var section  = $(self.sections[index].section);
                self.sections[index].offset = section.offset().top;
                self.sections[index].height = section.height() - self.settings.compensation ;
            }

        


            if($(window).scrollTop() + $(window).height() == $(document).height()) {
                var name = self.sections[self.sections.length -1].name;
                window.location.hash = name;
                
                if (!self.hasClick) 
                    self.selectMenu(name);

            }
            else{
                for(index in self.sections){
                    if(( scrollnr - self.sections[index].offset ) >= - self.settings.compensation && ( scrollnr - self.sections[index].offset ) <= self.sections[index].height ){
                        var name = self.sections[index].name;
                        window.location.hash = name;
                        
                        if (!self.hasClick) 
                            self.selectMenu(name);
                    }
                }
            }
        },

        selectMenu : function(name){
            var self = this;
            
            $('a' , self.elem).removeClass('selected');
            $('a[href="#'+name+'"]' , self.elem).addClass('selected');
        },

        merge : function(options){
            options = this.options
          if(options !== undefined){
            for(var opt in options){
                if(this.settings.hasOwnProperty(opt ) !== undefined)
                    this.settings[opt] = options[opt];
            }
                
          }
        }
    }

    window.MenuSlide = MenuSlide;

})($ , window);






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
        
             this.buttons      = this.elem.find("*[data-slide-btns]" ,  this.elem);
             this.contents     = this.elem.find("*[data-slide-contents]"  ,this.elem);
             this.buttonsClose = this.elem.find("*[data-slide-btns-close]"  ,this.elem) ;


            this.events();
            this.closeBtns();
        },

        events :function(){
            var self = this;
            
            this.buttons.each(function(index, elem){
               $(elem).on('click' , function(){

                    var elem = $(this);
                    var isSelected = elem.hasClass("selected");
                   
                    $("[data-slide-btns].selected .collapse" , self.elem).removeClass("selected");
                    $("[data-slide-btns].selected" , self.elem).removeClass("selected");

                    if(!isSelected){
                        $(this , self.elem).addClass("selected");
                        $(".collapse" , this).addClass("selected"); 
                    }
                

                    self.select(index);
                }) 
            })
            
        },

        select  : function(index){
            var content       = this.contents[index];
            console.log($("> div" , content) , content , "lol");
            var contentHeight = $("> div" , content).height();
            var $content =  $(content);

            if( $content.hasClass("selected") ){
                this.slideUp(content);
                $content.removeClass("selected");
             }
             else{
                var self = this;
                
                var callback = function(){
                    
                    $content.addClass("selected");
                    self.slideDown(content, contentHeight);
                };

                if(this.deselect(callback))
                        callback();
             }
        },

        closeBtns : function(){
            var obj  = this;

             this.buttonsClose.each(function(index , elem){
                $(elem).on('click' , function(event){
                    event.preventDefault();

                    $("[data-slide-btns].selected .collapse" , self.elem).removeClass("selected");
                    $("[data-slide-btns].selected" , self.elem).removeClass("selected");
                    
                    obj.select(index);
                });
             })
        },


        deselect : function(callback){
            if(content = $("[data-slide-contents].selected" , this.elem)[0]){
                $(content).removeClass("selected");
                this.slideUp(content, callback);
                 return false;
            }

            return true;
        },

        slideUp:function(elem, onEndCallback ){
            TweenLite.to($(elem), 0.6, {height:0 , onComplete:onEndCallback});
            

            var height = $(this.elem).offset();


            height     =  height.top - 91;

            TweenLite.to(window, 1, {scrollTo:{y: height}});
        },

        slideDown:function(elem , h){
            TweenLite.to($(elem), 1, {height:h});

            var height = $(elem).offset();
            height=  height.top - 91;
            TweenLite.to(window, 1, {scrollTo:{y: height}});
            
        },


        merge : function(options){

          if(options !== undefined){
            for(var opt in options){
                if(this.settings.hasOwnProperty(opt ) !== undefined)
                    this.settings[opt] = options[opt];
            }
                
          }
        }
    }
    window.SlideDownUp = SlideDownUp;
})





function setWidthContent(){
   var w = ( ( jQuery(window).width() - jQuery(".container").width() ) / 2 ) + 478;
    desc = jQuery(".sub-content .desc " , "#maintenance").css('width' , w + "px"); 
    descfabril = jQuery(".sub-content .desc " , "#maintenance-fabril").css('width' , w + "px"); 
}



$(document).ready(function(){
    setWidthContent();
    var maintenance       = new SlideDownUp("#maintenance");
    var maintenanceFabril = new SlideDownUp("#maintenance-fabril");

    var menuSlide = new MenuSlide("#menu-header" , {compensation : 91, btntop:'.btntop'})
    new cbpScroller( document.getElementById( 'cbp-so-scroller' ) );

 


    $(".collapse").on('click', function() {
        $(this).toggleClass('selected');
        $( ".content-collapse",  $(this).parent()).slideToggle( "slow", function() {});
    });


    // $(".clients-logs img").each(function(index ,elem){
    //     var src       = $(elem).attr("src");
    //     var srcHover  = src.replace('_on' , '_hover');

    //     $(elem).on('mouseover' , function(){
    //         $(this).css({opacity : 0});
    //         $(this).attr('src' , srcHover);
    //           TweenLite.to($(this), 2, {opacity:1});
    //           console.log(srcHover)
    //     });


    //     $(elem).on('mouseout' , function(){
    //         $(this).css({opacity : 0});
    //         $(this).attr('src' , src);
    //         TweenLite.to($(this), 2, {opacity:1});
    //     })
    // })



    $('#contacts-form').on('submit' , function(event){
        event.preventDefault();

        var ajaxurl = "/ajax/contacts.php";
        var data    = $( this).serialize();
        var loading = $(".loading" , "section.contacts");

        loading.addClass("selected");
       
        jQuery.post(
            ajaxurl,
            {data:data}, function(response){
                loading.removeClass("selected");
                result  = $.parseJSON ( response );
                
                if(result.error){
                    messages = $.parseJSON ( result.message) ;

                    for(var index in messages){
                
                        $('input[name="'+ index + '"] + span.error , textarea + span.error' , '#contacts-form').text(messages[index])
                       
                    }
                }
                else{
                   $("span.error" , '#contacts-form').each(function(){
                        $(this).text('');
                   })

                   $('#contacts-form').trigger("reset");

                   $("#contact-sucess-msg").removeClass("hide");
                   
                }
            }
        );
    });
});

$(window).on("resize", setWidthContent);


// $(document).ready(function(){
//     $('.parallax').each(function(){
//         var $bgobj = $(this); // assigning the object
        
//         $(window).scroll(function() {
//             var yPos = -($(window).scrollTop() / 9); 
//             console.log( $(this));
//             // Put together our final background position
//             var coords = '0% '+ yPos + 'px';

//             // Move the background
//             $bgobj.css({ backgroundPosition: coords });
//         }); 
//     });    
// });






$(document).ready(function(){
                        
    // Cache the Window object
    $window = $(window);
    
    // Cache the Y offset and the speed of each sprite
    $('.parallax').each(function() {  
        $(this).data('offsetY', parseInt($(this).attr('data-offsetY')));
        $(this).data('Xposition', $(this).attr('data-Xposition'));
        $(this).data('speed', $(this).attr('data-speed'));
    });
    
    // For each element that has a data-type attribute
    $('.parallax').each(function(){
    var $self = $(this);
    
      
        
        // When the window is scrolled...
        $(window).on('scroll' , function() {
    
              // Store some variables based on where we are
        
            var offsetCoords = $self.offset(),
            topOffset = offsetCoords.top;

            // If this section is in view
            if ( ($window.scrollTop() + $window.height()) > (topOffset) &&
                 ( (topOffset + $self.height()) > $window.scrollTop() ) ) {
    
                // Scroll the background at var speed
                // the yPos is a negative value because we're scrolling it UP!   

                var speedmy = ($(window).width() < 1400) ? $self.data('speed')  : 15;                        
                var yPos = -($window.scrollTop() / speedmy  ); 
                
                // If this element has a Y offset then add it on
                if ($self.data('offsetY')) {
                    yPos += $self.data('offsetY');
                }
                
                // Put together our final background position
                var coords = '0% '+ yPos + 'px';

                // Move the background
                $self.css({ backgroundPosition: coords });
                
                // // Check for other sprites in this section  
                // $('[data-type="sprite"]', $self).each(function() {
                    
                //     // Cache the sprite
                //     var $sprite = $(this);
                    
                //     // Use the same calculation to work out how far to scroll the sprite
                //     var yPos = -($window.scrollTop() / $sprite.data('speed'));                  
                //     var coords = $sprite.data('Xposition') + ' ' + (yPos + $sprite.data('offsetY')) + 'px';
                    
                //     $sprite.css({ backgroundPosition: coords });                                                    
                    
                // }); // sprites
            
                // // Check for any Videos that need scrolling
                // $('[data-type="video"]', $self).each(function() {
                    
                //     // Cache the video
                //     var $video = $(this);
                    
                //     // There's some repetition going on here, so 
                //     // feel free to tidy this section up. 
                //     var yPos = -($window.scrollTop() / $video.data('speed'));                   
                //     var coords = (yPos + $video.data('offsetY')) + 'px';
    
                //     $video.css({ top: coords });                                                    
                    
                // }); // video    
            
            }; // in view
    
        }); // window scroll
            
    }); // each data-type

}); // document ready





