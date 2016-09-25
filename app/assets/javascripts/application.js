//= require jquery
//= require parsley
//= require parsley.i18n.es

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
