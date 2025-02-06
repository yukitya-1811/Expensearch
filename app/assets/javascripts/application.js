//= require rails-ujs
//= require turbolinks
//= require jquery
//= require_tree .
//= require toastr

window.jQuery = window.$ = $;

toastr.options = {
    closeButton: true,
    progressBar: true,
    positionClass: "toast-top-right",
    preventDuplicates: true,
    timeOut: "3000",
  };