$(document).ready(function(){
    $(".owl-carousel").owlCarousel({
        animateOut: true,
        itemsDesktop : true,
        animateIn: true,
        items:1,
        smartSpeed:450,
        loop:true,
        autoplay: true,
        autoplayTimeout: 5000
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
