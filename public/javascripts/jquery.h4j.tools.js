(function($){
    $.iOS = RegExp('iP(hone|[oa]d)').test(navigator.userAgent);

    $.fn.steppedScrollable = function(steps) {
        this.each(function() {
            var scrollable = $(this).scrollable({touch: false}).data('scrollable');
            $('.prev-arrow').click(function(e) { e.preventDefault(); scrollable.move(0-steps); });
            $('.next-arrow').click(function(e) { e.preventDefault(); scrollable.move(steps); });

            $(this).addClass('.steppedScrollable');

            if($.iOS) {
                var rightSwipeFun = function() { scrollable.move(0 - steps); };
                var leftSwipeFun = function() { scrollable.move(steps); };

                $(this).swipe({swipeRight: rightSwipeFun, swipeLeft: leftSwipeFun});
            }
        });
        return this;
    };
})(jQuery);
