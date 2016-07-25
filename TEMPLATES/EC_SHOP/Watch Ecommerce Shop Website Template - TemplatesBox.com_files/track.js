(function ($) {
    $(document).ready(function() {
        var urls = [], _gaq = window._gaq || [], calls = [];
        
        var a = $('a[href*=wix]').click(function (e) {
            var that = this;
            _gaq.push(['_trackEvent', 'Outbound Links', 'click', this.href]);
            e.preventDefault();
            setTimeout(function () {
                window.open(that.href);
            }, 100);
        }).filter(function (idx, item) {
            if (urls.indexOf(item.href) === -1) {
                urls.push(item.href);
                return true;
            }
            
        });
        
        a.each(function () {
            calls.push(['_trackEvent', 'Outbound Links', 'show', this.href]);
        });
        
        _gaq.push.apply(_gaq, calls);
    });
})(jQuery);