import "bootstrap";
import "jquery";

// Instantiate the Bootstrap carousel
$('.multi-item-carousel').carousel({
  interval: false
});

// for every slide in carousel, copy the next slide's item in the slide.
// Do the same for the next, next item.
$('.multi-item-carousel .item').each(function(){
  var next = $(this).next();
  if (!next.length) {
    next = $(this).siblings(':first');
  }
  next.children(':first-child').clone().appendTo($(this));

  if (next.next().length>0) {
    next.next().children(':first-child').clone().appendTo($(this));
  } else {
  	$(this).siblings(':first').children(':first-child').clone().appendTo($(this));
  }
});




document.addEventListener('DOMContentLoaded', function () {
    const navtabs = document.querySelector(".nav-item")
    if (navtabs) {
      // Javascript to enable link to tab
      var url = document.location.toString();
      if (url.match('#')) {
        $('.nav-item a[href="#' + url.split('#')[1] + '"]').tab('show');
      }

      // Change hash for page-reload
      $('.nav-item a').on('shown.bs.tab', function (e) {
          window.location.hash = e.target.hash;
      })
    }
  });
