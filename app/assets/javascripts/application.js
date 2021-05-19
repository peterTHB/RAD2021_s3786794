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
// require rails-ujs
//= require jquery
//= require jquery_ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
//= require bootstrap

// Javascript methods to help send data to corresponding
// methods in the appropriate controllers

// Method to send a request to the static_pages controller
// to save item that current shows in Items banner
$(document).on("click",'#buttonSave', function(){
    $.ajax("/static_pages/savedToList")
});

// Method to send a request to change a saved item's
// state to either saved or not saved in view of
// fashion/saved_list
$(document).on("click", '#buttonSaveCheck', function(e){
    e.preventDefault();
    $.ajax("/fashion/savedToListOrNot")
});

// Helps move carousel in view of fashion/saved_list
$(document).on("click", '#leftControl', function(e){
    e.preventDefault();
    $.ajax("/fashion/moveBackward")
})

$(document).on("click", '#rightControl', function(e){
    e.preventDefault();
    $.ajax("/fashion/moveForward")
})