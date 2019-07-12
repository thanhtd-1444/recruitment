// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require jquery_ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require popper
//= require bootstrap
//= require js/owl.carousel.js
//= require js/owl.animate.js
//= require js/owl.autoplay.js
//= require social-share-button

function saveInfomation () {
    var userName = $('#comment_user_name').val() || $('#job_comment_user_name').val();
    var userEmail = $('#comment_email').val() || $('#job_comment_email').val();
    localStorage.setItem('username', userName)
    localStorage.setItem('email', userEmail)
}

function removeInfomation() {
    localStorage.removeItem('username');
    localStorage.removeItem('email');
}

function getDataComment() {
    var userName = localStorage.getItem('username')
    var userEmail = localStorage.getItem('email')
    if (userName) {
        $('#comment_user_name').val(userName);
        $('#job_comment_user_name').val(userName);
        $('#rememberMe').attr("checked", "checked");
    }
    if (userEmail) {
        $('#comment_email').val(userEmail);
        $('#job_comment_email').val(userEmail);
        $('#rememberMe').attr("checked", "checked");
    }
}

function onCLickSaveMe() {
    $('#rememberMe').change(function() {
        if($(this).is(":checked")) {
           saveInfomation();
           return;
        }
        removeInfomation()
     });
}

$(document).on('turbolinks:load', function() {
    AOS.init({
        disable: false,
        startEvent: 'DOMContentLoaded',
        initClassName: 'aos-init',
        animatedClassName: 'aos-animate',
        useClassNames: false,
        disableMutationObserver: false,
        debounceDelay: 50,
        throttleDelay: 99,


        offset: 120,
        delay: 0,
        duration: 500,
        easing: 'ease',
        once: false,
        mirror: false,
        anchorPlacement: 'top-bottom'
      });

    $('.grid').masonry({
        // options...
        itemSelector: '.grid-item',
    });

    $(window).scroll(function(){
        if ($(this).scrollTop() > 500) {
            $('#scroll').addClass('in');
        } else {
            $('#scroll').removeClass('in');
        }

        myFunction();
    });

    var header = document.getElementById("header");
    var sticky = 140;

    function myFunction() {
        if (window.pageYOffset > sticky) {
            header.classList.add("sticky");
        } else {
            header.classList.remove("sticky");
        }
    }

    $('#scroll').click(function(){
        $("html, body").animate({ scrollTop: 0 }, 600);
    });

    $('.gf-toggle-icon').click(function(){
        var parent = $('.navbar-collapse');
        parent.toggleClass('collapsed');
    });

    if ($(window).width() < 992) {
        $(".sticky-menu").unstick();
    } else {
        $(".sticky-menu").sticky({topSpacing:100});
    }

    $( window ).resize(function() {
        if ($(window).width() < 992) {
            $(".sticky-menu").unstick();
        } else {
            $(".sticky-menu").sticky({topSpacing:100});
        }
    });

    onCLickSaveMe();
    getDataComment();

});

function scrollToID (elementID) {
    console.log(1)
    $('html, body').animate({
        scrollTop: $("#"+ elementID +"").offset().top - 50
    }, 500);
}

$(document).load(function(){
    scrollToID();
  });

$(document).mouseup(function(e) {
    var container = $('.gf-toggle-icon');
    var parent = $('.navbar-collapse');

    if (!container.is(e.target) && container.has(e.target).length === 0) {
        parent.removeClass('collapsed');
    }
});
