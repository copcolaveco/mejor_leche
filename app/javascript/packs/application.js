// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "chartkick/highcharts"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

//= require moment
//= require jquery3
//= require popper
//= require chartkick
//= require Chart.bundle
//= require bootstrap
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery_ujs
// chart.Added for js use
//= require chart.js

$(document).ready(function() {

    // #first_select is the id of our first select box, if the ajax request has been successful,
    // an ajax:success event is triggered.
  
    $('#estate_selection').on('ajax:success', function(evt, data, status, xhr) {
      // get second selectbox by its id
      var char_cell_count = $('#chart_cell_count');
  
      // empty it
      char_cell_count.empty();
  
      // we got a JSON array in data, iterate through it
  
      // $.each(data, function(index, value) {
      //   // append an option
      //   var opt = $('<option/>');
  
      //   // value is an array: [:id, :name]
      //   opt.attr('value', value[0]);
      //   // set text
      //   opt.text(value[1]);
      //   // append to select
      //   opt.appendTo(char_cell_count);
      // });
    });
  
    
  });

