// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function select_item(link) {
  console.log(link);
  val = $(link).parent().find("input").val()
  if (val == 'true') {
    $(link).parent().find("input").val('false');
    $(link).text('Remover');
    $(link).removeClass('btn-success');
    $(link).addClass('btn-danger');
    $(link).parent().next().find('input').removeClass('hidden');
    $(link).parent().next().next().find('input').removeClass('hidden');
  } else {
    $(link).parent().find("input").val('true');
    $(link).text('Selecionar');
    $(link).addClass('btn-success');
    $(link).removeClass('btn-danger');
    $(link).parent().next().find('input').addClass('hidden');
    $(link).parent().next().next().find('input').addClass('hidden');
  }
}
