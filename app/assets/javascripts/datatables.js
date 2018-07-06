//= require datatables/jquery.dataTables
//= require datatables/dataTables.bootstrap4

$(document).on('turbolinks:load', function() {
  $(".datatable").dataTable();
});
