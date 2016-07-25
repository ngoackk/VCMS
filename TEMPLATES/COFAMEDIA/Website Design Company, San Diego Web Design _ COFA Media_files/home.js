/**
 * Created by CofaMedia on 9/18/14.
 */

/*====================================================
 Preloader
 =================================================== */
jQuery(document).ready(function($) {
    var vid = document.getElementById("bgvid");
//    $(window).load(function(){
////        $('#preloader').fadeOut('slow',function(){$(this).remove();});
//        $('body').addClass('loaded');
//        vid.play();
//    });
    jQuery('.play-video a').on('click', function(){
        vid.paused ? vid.play() : vid.pause();
        vid.paused ? jQuery(this).removeClass('pause').addClass('play') : jQuery(this).removeClass('play').addClass('pause');
    });
});

/*====================================================
 Video Messages
 =================================================== */
$(window).load(function(){
    $('video#bgvid').on('timeupdate',function() {
        var ct = parseInt(this.currentTime);
        if (this.lastTime!=ct) {
            switch (ct) {
//                case 7 :
//                    $('#home-intro .message1').fadeOut('slow',function() { $('#home-intro .message1').html('Wearables, Google Glass,').fadeIn('slow'); });
//                    $('#home-intro .message2').fadeOut('slow',function() { $('#home-intro .message2').html('Future of Digital').fadeIn('slow'); });
//                    break;
                case 9 :
                    $('#home-intro .message1').fadeOut('slow',function() { $('#home-intro .message1').html('Mobile, Responsive Design, Development').fadeIn('slow');
                        $('#home-intro .message1').addClass('small-message');
                    });
                    $('#home-intro .message2').fadeOut('slow',function() { $('#home-intro .message2').html('Great Results').fadeIn('slow');
                        $('#home-intro .message2').addClass('small-message');
                    });
                    break;
                case 19 :
                    $('#home-intro .message1').fadeOut('slow');
                    $('#home-intro .message2').fadeOut('slow',function() { $('#home-intro .message2').html('Creative, Interactive, Digital').fadeIn('slow');
                        $('#home-intro .message1').removeClass('small-message');
                        $('#home-intro .message2').removeClass('small-message');
                    });
                    break;
                case 24 :
                    $('#home-intro .message1').fadeOut('slow',function() { $('#home-intro .message1').html('A Great Team is').fadeIn('slow'); });
                    $('#home-intro .message2').fadeOut('slow',function() { $('#home-intro .message2').html('a Great fit for any Agency').fadeIn('slow'); });
                    break;
                case 33 :
                    $('#home-intro .message1').fadeOut('slow',function() { $('#home-intro .message1').html('Innovative Technologies').fadeIn('slow'); });
                    $('#home-intro .message2').fadeOut('slow',function() { $('#home-intro .message2').html('are Fun').fadeIn('slow'); });
                    break;
                case 36 :
                    $('#home-intro .message1').fadeOut('slow',function() { $('#home-intro .message1').html('Open Communication leads').fadeIn('slow'); });
                    $('#home-intro .message2').fadeOut('slow',function() { $('#home-intro .message2').html('to better Projects').fadeIn('slow'); });
                    break;
                case 44 :
                    $('#home-intro .message1').fadeOut('slow',function() { $('#home-intro .message1').html('Collaborative Planning').fadeIn('slow'); });
                    $('#home-intro .message2').fadeOut('slow',function() { $('#home-intro .message2').html('with all Team Members').fadeIn('slow'); });
                    break;
                case 51 :
                    $('#home-intro .message1').fadeOut('slow',function() { $('#home-intro .message1').html('Wonder what Cofa Stands For?').fadeIn('slow'); });
                    $('#home-intro .message2').fadeOut('slow',function() { $('#home-intro .message2').html('Creative Online for Agencies').fadeIn('slow'); });
                    break;
            }
        }
        this.lastTime=ct;
    });

});

/*====================================================
 Home Sections
 =================================================== */

$(document).ready(function () {

    var vid = document.getElementById("bgvid");

    $('#fullpage').fullpage({
        verticalCentered: true,
        anchors: ['intro', 'welcome', 'portfolio', 'contact'],
        sectionsColor: ['#ffffff', '#ffffff', '#1d1d1d', '#ffffff'],
        navigation: true,
        navigationPosition: 'right',
        navigationTooltips: ['Home', 'Who we are', 'Portfolio', 'Contact'],
        scrollingSpeed: 900,
        easing: 'swing',
        autoScrolling: true,
        keyboardScrolling: true,
        resize: true,
        afterRender: function () {
            $('.scroll-switcher').on('click', function () {
                if ($(this).is('#turn-off-scroll')) {
                    $.fn.fullpage.setAutoScrolling(false);
                } else {
                    $(window).bind('resize');
                    $.fn.fullpage.setAutoScrolling(true);
                }
            });
        },
        onLeave: function (index, nextIndex, direction) {
            //after leaving section 1
            if (index == '1' && direction == 'down') {
                $('#home-intro header').fadeOut(500);
            }
            if (index == '2' || index == '3' || index == '4' || index == '5' && direction == 'up') {
                $('#home-intro header').fadeIn(200);
            }

            //var innerHeight = window.innerHeight,
            //    innerWidth = window.innerWidth;
            //if (innerHeight > 767 && innerWidth > 767) {
            //    if (nextIndex == '1') {
            //        vid.play();
            //    }else{
            //        vid.pause();
            //    }
            //}else{
            //    vid.play();
            //}

            vid.pause();
            jQuery('.play-video a').removeClass('pause').addClass('play');

        },
        afterLoad: function (anchorLink, index) {
            if (index == 2) {
                $('.section-welcome').addClass('active');

                //Welcome animation 1
                setTimeout(function () {
                    $('.welcome .main .top-block').addClass('visible animated bounceInUp');
                }, 0);
                //Welcome animation 2
                setTimeout(function () {
                    $('.welcome .main .middle-block').addClass('visible animated fadeIn');
                }, 1000);
                //Welcome animation 3
                setTimeout(function () {
                    $('.welcome img.wlc-bg').addClass('visible animated bounceInRight');
                }, 1500);
            }

            //Play video
            //if (index == '1') {
            //    var innerHeight = window.innerHeight,
            //        innerWidth = window.innerWidth;
            //    if (innerHeight > 767 && innerWidth > 767) {
            //        vid.play();
            //    }
            //}
        }
    });

    fitIntro();
    headerBg();
    switchScroll();
    animateElements();
    resizeFirstSection();

});

function resizeFirstSection() {
    var innerHeight = window.innerHeight,
        innerWidth = window.innerWidth;

    if (innerHeight < 450 && innerWidth < 737) {
        var sectionHeight = 'height:' + innerHeight + 'px !important; min-height:' + innerHeight + 'px !important;';
        $('body.homepage section#home-intro').attr('style', sectionHeight);
    }
}

function fitIntro() {
    var innerHeight = window.innerHeight,
        innerWidth = window.innerWidth;

    if (innerWidth <= 767) {
        $('body.homepage section#home-intro').css('height', innerHeight);
    }
}

function headerBg() {
    var innerWidth = window.innerWidth;

    if (innerWidth <= 767) {
        $(window).on('scroll', function (e) {
            if ($(document).scrollTop() > 30) {
                $('#home-intro .header-container').css('background', '#dc222b');
            } else {
                $('#home-intro .header-container').css('background', 'transparent');
            }
        });
    } else {
        $('#home-intro .header-container').css('background', 'transparent');
    }
}

function animateElements() {
    var innerHeight = window.innerHeight,
        innerWidth = window.innerWidth;

    if (innerHeight > 767 && innerWidth > 767) {
        $('.welcome .main .top-block').addClass("hidden");
        $('.welcome .main .middle-block').addClass("hidden");
        $('.welcome img.wlc-bg').addClass("hidden");
    } else {
        $('.welcome .main .top-block').removeClass("hidden");
        $('.welcome .main .middle-block').removeClass("hidden");
        $('.welcome img.wlc-bg').removeClass("hidden");
    }
}

function switchScroll() {
    var innerHeight = window.innerHeight,
        innerWidth = window.innerWidth;

    if (innerHeight > 767 && innerWidth > 767) {
        $("#turn-on-scroll").trigger("click");
    } else {
        $("#turn-off-scroll").trigger("click");
    }

    return true;
}

function makeFixedNav() {
    var innerWidth = window.innerWidth,
        topDist = $('.section.welcome').offset().top;

    if (innerWidth < 768) {
        $(window).on('scroll', function (e) {

            if (window.scrollTop > topDist) {
                $('.welcome .header-container').css('position', 'fixed');
                $('.welcome .header-container').css('z-index', 5);
                $('.welcome').css('padding-top', 75);
            } else {
                $('.welcome .header-container').css('position', 'relative');
                $('.welcome').css('padding-top', 0);
            }

        });
    } else {
        $('.welcome .header-container').css('position', 'relative');
        $('.welcome').css('padding-top', 0);
    }
}

$(window).resize(function () {
    fitIntro();
    headerBg();
    switchScroll();
//    makeFixedNav();
    animateElements();
    resizeFirstSection();
});

/*====================================================
 Home Welcome
 =================================================== */

jQuery(document).ready(function () {
    // initiates responsive slide gallery
    var settings = function () {
        var mobile = {
            minSlides: 1,
            maxSlides: 1,
            moveSlides: 1,
            slideWidth: 280,
            infiniteLoop: false,
            pager: false
        };
        var stablet = {
            minSlides: 1,
            maxSlides: 3,
            moveSlides: 1,
            slideWidth: 245,
            slideMargin: 0,
            controls: false,
            pager: false,
            infiniteLoop: false
        };
        var ltablet = {
            minSlides: 1,
            maxSlides: 3,
            moveSlides: 1,
            slideWidth: 300,
            slideMargin: 0,
            controls: false,
            pager: false,
            infiniteLoop: false
        };
        var desktop = {
            minSlides: 1,
            maxSlides: 3,
            moveSlides: 1,
            slideWidth: 410,
            slideMargin: 65,
            controls: false,
            pager: false,
            infiniteLoop: false
        };

        var width = jQuery(window).width();
        if (width < 768) {
            return mobile;
        } else if (width >= 768 && width <= 1023) {
            return stablet;
        } else if (width > 1023 && width < 1360) {
            return ltablet;
        } else {
            return desktop;
        }
    }

    var mySlider;

    function tourLandingScript() {
        mySlider.reloadSlider(settings());
    }

    mySlider = jQuery('#welcome-slider').bxSlider(settings());
    jQuery(window).resize(tourLandingScript);


});

/*====================================================
 Home Video
 =================================================== */
$(window).load(function () {
    var width = jQuery(window).width();
    if (width < 768) {
        $('#bgvid').remove();
    }
});

