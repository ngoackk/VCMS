
/*====================================================
 Clients Footer BX
 =================================================== */

jQuery(document).ready(function () {
    // initiates responsive slide gallery
    var settings = function () {
        var mobile = {
            minSlides: 1,
            maxSlides:3,
            moveSlides: 1,
            slideWidth: 99,
            slideMargin: 0,
            infiniteLoop: true,
            pager: false,
            controls: false,
            auto: true
        };
        var lmobile = {
            minSlides: 1,
            maxSlides: 2,
            moveSlides: 1,
            slideWidth: 200,
            slideMargin: 20,
            controls: false,
            pager: false,
            infiniteLoop: true,
            auto: true
        };
        var xstablet = {
            minSlides: 1,
            maxSlides: 3,
            moveSlides: 1,
            slideWidth: 200,
            slideMargin: 0,
            controls: false,
            pager: false,
            infiniteLoop: true,
            auto: true
        };
        var stablet = {
            minSlides: 1,
            maxSlides: 3,
            moveSlides: 1,
            slideWidth: 230,
            slideMargin: 0,
            controls: false,
            pager: false,
            infiniteLoop: true,
            auto: true
        };
        var ltablet = {
            minSlides: 1,
            maxSlides: 4,
            moveSlides: 1,
            slideWidth: 227,
            slideMargin: 0,
            controls: false,
            pager: false,
            infiniteLoop: true,
            auto: true
        };
        var desktop = {
            minSlides: 1,
            maxSlides: 5,
            moveSlides: 1,
            slideWidth: 265,
            slideMargin: 5,
            controls: false,
            pager: false,
            infiniteLoop: false,
            auto: true
        };

        var width = jQuery(window).width();
        if (width < 480) {
            return mobile;
        } else if (width >= 480 && width <= 639) {
            return lmobile;
        } else if (width >= 640 && width <= 767) {
            return xstablet;
        } else if (width >= 768 && width <= 900) {
            return stablet;
        } else if (width > 900 && width < 1360) {
            return ltablet;
        } else {
            return desktop;
        }
    }

    var mySlider;

    function tourLandingScript() {
        mySlider.reloadSlider(settings());
    }

    mySlider = jQuery('#clients-slider').bxSlider(settings());
    jQuery(window).resize(tourLandingScript);


});