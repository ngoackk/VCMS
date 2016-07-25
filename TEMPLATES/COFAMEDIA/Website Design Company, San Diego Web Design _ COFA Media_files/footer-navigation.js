function showSubmenu(item) {
    var width = jQuery(window).width(),
        itemId = item.getAttribute("data-id"),
        element = 'a[data-id="'+itemId+'"]',
        topDist = $('.footer-menu '+ element).position().top,
        distance = topDist - 50;

    if (width > 1024){
        $('.footer-menu .submenu').fadeOut(200);
        $('.footer-menu .mainmenu').css('left', 0);
        $('.footer-menu '+ element).parent().find('.submenu').css('margin-top', distance);
        $('.footer-menu').find(element).next().fadeIn(100);
    }
}

function hideSubmenu(item) {
    var width = jQuery(window).width();

    if (width > 1024){
        var itemId = item.getAttribute("id");
        $('.footer-menu .mainmenu').css('left', 147);
        $('.footer-menu .submenu').fadeOut(300);
    }
}

function touchDevicesMenu() {
    var width = jQuery(window).width();

    $('.mainmenu > li').on('click', function(){
        if (width <= 1024){
            $('.mainmenu > li').removeClass('active');
            $(this).addClass('active');

            if(jQuery(this).find('.submenu').css('display') != 'block'){
                jQuery('.submenu.active').slideUp('fast').removeClass('active');
                jQuery(this).find('.submenu').addClass('active').slideDown('slow');
                jQuery('.bottom-block .contact-info').fadeOut(300);
            } else {
                jQuery('.submenu.active').slideUp('fast').removeClass('active');
                $('.mainmenu > li').removeClass('active');
                jQuery('.bottom-block .contact-info').fadeIn(100);
            }
        }
    });
}

$(window).resize(function(){
    var width = jQuery(window).width();
    if (width <= 1024){
        $('.footer-menu .submenu').slideUp('fast').css('margin-top', 0);
        $('.footer-menu .mainmenu').css('left', 0);
        $('.mainmenu > li').removeClass('active');
    }else{
        $('.footer-menu .mainmenu').css('left', 147);
        $('.footer-menu .submenu').fadeOut(300);
    }
});

$(document).ready(function(){
    touchDevicesMenu();
});