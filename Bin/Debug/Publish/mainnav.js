$(document).ready(function () {
    $('.ulMenu  li ul').hide();
    $('.ulMenu  li').hover(function () {
        $(this).children().stop(true).show();
    },
    function () { $(this).find('ul').stop(true).slideUp('slow'); });

});

