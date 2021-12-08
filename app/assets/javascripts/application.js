// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery2
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require jquery.mask
//= require chosen-jquery
//= require cocoon
//= require bootstrap-multiselect
//= require bootstrap-sprockets
//= require bootstrap3-typeahead
//= require adminLTE/adminlte

//= require query.dataTables
//= require datatables/dataTables.bootstrap
//= require datatables/dataTables.responsive

//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.pt-BR
//= require moment
//= require moment/pt-br
//= require bootstrap-datetimepicker

//= require summernote
//= require summernote/lang/summernote-pt-BR

//= require_tree .

function display_fields(link) {
  if ($(link).hasClass("fa-plus")) {
    $(link).removeClass("fa-plus");
    $(link).addClass("fa-minus");
  } else {
    $(link).removeClass("fa-minus");
    $(link).addClass("fa-plus");
  }
  $(link).parent().next().toggle("fast");
}

$(document).ready(function() {
  $('#group_items').on('cocoon:before-insert', function(e, insertedItem) {
    if (insertedItem.hasClass('item')) {
      $('#group_items .nested-fields .display_fields').removeClass("fa-minus");
      $('#group_items .nested-fields .display_fields').addClass("fa-plus");
      $('#group_items .nested-fields .fundo-branco').hide();
    }
  });

  $('#group_items').on('cocoon:after-remove', function(e, insertedItem) {
    update_indexes_items();
  });


  $(".add_laboratorio_item").
    data("association-insertion-method", 'append').
    data("association-insertion-node", function(link){
        return link.parent().parent().parent().find('table')
  });

  $('#group_items').on('cocoon:after-insert', function(e, insertedItem) {
    if (insertedItem.hasClass('item')) {
      insertedItem.find('i').attr('onclick', 'display_fields(this)');

      i = 1;
      $("#group_items input[id$=_id]").each(function() {
        $(this).val(i);
        i= i + 1;
      });

      $("#group_items textarea[id$=_name]").each(function() {
        $(this).change(function() {
          update_tabs();
        });
      });

      $("#group_items input[id$=_tipo]").each(function() {
        $(this).change(function() {
          update_tabs();
        });
      });

      $(".add_licitacao_item").
        data("association-insertion-method", 'append').
        data("association-insertion-node", function(link){
          return link.parent().parent().parent().find('table')
        });

      // index_sortables();
      // $(".survey_questions_title input[type=text]").each(function() {
        // $(this).change(function() {
          // $(this).parent().parent().parent().parent().find("b").text("Questão: " + $(this).val());
        // });
      // });
    }
  });


  $('#group_items').on('cocoon:after-insert', function(e, insertedItem) {
    if (($('tr:visible').length) > 0 ) {
      $('#add_exame').attr('disabled', true)
          .css({"pointer-events" : "none" , "opacity" :  "0.0"})
          .attr("tabindex" , "-1");
    }
  });
});
