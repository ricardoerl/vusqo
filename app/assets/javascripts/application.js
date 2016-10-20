//= require jquery
//= require jquery_ujs
//= require parsley
//= require parsley.i18n.es
//= require notie.min

(function ($) {
  var profileMenuLink = $('#profile-menu-link');
  var profileMenu = $('#profile-menu');

  if (profileMenuLink) {
    profileMenuLink.on('click', function (e) {
      e.preventDefault();
      profileMenu.toggleClass('dn');
    });
    profileMenu.on('mouseleave', function () {
      $(this).toggleClass('dn');
    });
  }

  $(".social-share").on("click", function(e) {
    e.preventDefault();
    windowShare($(this).attr("href"), 500, 300);
  });

  function windowShare(url, width, height) {
    // Calculate the position of the popup so
    // it’s centered on the screen.
    var left = (screen.width / 2) - (width / 2),
        top = (screen.height / 2) - (height / 2);

    window.open(
      url,
      "",
      "menubar=no,toolbar=no,resizable=yes,scrollbars=yes,width=" + width + ",height=" + height + ",top=" + top + ",left=" + left
    );
  }
})(jQuery);
