$(function() {
  $('.menu-trigger').click(function() {
      $(this).toggleClass('active');
      $('.g-nav').slideToggle(400);
  });
});