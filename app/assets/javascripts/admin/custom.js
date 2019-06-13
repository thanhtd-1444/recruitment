//= require jquery
//= require jquery_ujs


$(document).ready(function () {
    $('.toggle-nav-btn').on('click', function () {
      $('.page-container').toggleClass('sbar_collapsed');
    });
});
