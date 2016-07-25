/**
 * Created by CofaMedia on 9/12/14.
 */

/*====================================================
Main navigation
=================================================== */
jQuery(document).ready(function() {
    jQuery('header .main-nav').on('click', function(){
        jQuery('#main-menu').fadeIn(300).addClass('expanded');
    });

    jQuery('#main-menu').on('click', function(){
        jQuery('#main-menu.expanded').fadeOut(300).removeClass('expanded');
    });
    getResolution();
});

/*====================================================
 Get viewport size
 =================================================== */

function getResolution() {
    var height = jQuery(window).height(),
        width = jQuery(window).width(),
        resolution = width + ' x ' + height;

    jQuery('.resolution').text(resolution);
    return true;
}

jQuery(window).resize(function () {
    getResolution();
});