module ApplicationHelper

  def show_modal(body)
    "$('#{'#modal-container'} .modal-body').html('#{body}');
    $('#{'#modal-container'}').modal('show');".html_safe
  end
end
