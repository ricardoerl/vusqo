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
    // profileMenu.on('mouseleave', function () {
    //   $(this).toggleClass('dn');
    // });
  }
})(jQuery);
