'use strict'

var profileMenuLink = document.getElementById('profile-menu-link') || null;
var profileMenu = document.getElementById('profile-menu') || null;

if (profileMenuLink) {
    profileMenuLink.addEventListener('click', function(e) {
        e.preventDefault();
        profileMenu.classList.toggle('dn');
    });
}
