$(document).ready(function(){
    $(".owl-carousel").owlCarousel({
        animateOut: true,
        animateIn: true,
        items:1,
        autoWidth: true,
        smartSpeed:450,
        loop:true,
        autoplay: true,
        autoplayTimeout: 5000,
        center: true
    });

    window.onscroll = function() {myFunction()};

    var header = document.getElementById("header");
    var sticky = 140;

    function myFunction() {
    if (window.pageYOffset > sticky) {
        header.classList.add("sticky");
    } else {
        header.classList.remove("sticky");
    }
    }
});
