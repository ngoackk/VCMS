/*====================================================
 Fancybox
 =================================================== */

$(document).ready(function() {
//    $(".fancybox").fancybox();
    $('.open-popup-link').magnificPopup({
        type:'inline',
        callbacks: {
            open: function() {
                if($('body').attr('class') == 'homepage'){
                    var vid = document.getElementById("bgvid");
                    vid.pause();
                }
                $('#watch_reel').trigger( "click" );
            },
            close: function() {
                if($('body').attr('class') == 'homepage'){
                    var vid = document.getElementById("bgvid");
                    vid.play();
                }
            }
        }
    });
    
    function isIE () {
        var myNav = navigator.userAgent.toLowerCase();
        return (myNav.indexOf('msie') != -1) ? parseInt(myNav.split('msie')[1]) : false;
    }
    
    if (isIE () === 9) {
        $('#pop-up-video video').attr('autoplay','');
    }


});



