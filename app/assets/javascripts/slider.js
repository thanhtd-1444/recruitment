$(document).on('turbolinks:load', function () {
    $(".owl-carousel").owlCarousel({
        animateOut: true,
        animateIn: true,
        itemsDesktop: true,
        items: 1,
        smartSpeed: 500,
        loop: true,
        autoplay: true,
        autoplayTimeout: 5000
    });
});
