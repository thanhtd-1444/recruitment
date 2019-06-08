$(document).on('turbolinks:load', function () {
    $(".owl-carousel").owlCarousel({
        animateOut: true,
        itemsDesktop: true,
        animateIn: true,
        items: 1,
        smartSpeed: 450,
        loop: true,
        autoplay: true,
        autoplayTimeout: 5000
    });
});
