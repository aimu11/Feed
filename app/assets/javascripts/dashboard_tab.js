$( document ).ready(function() {
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
})
