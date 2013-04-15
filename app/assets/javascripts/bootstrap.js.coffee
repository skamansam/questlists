jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  
  #make sure the title is set properly
  $('#ajax-modal').on 'shown', (e)->
    $('#ajax-modal .modal-header h3').html( $('#ajax-modal .modal-body').find('h1,h2,h3,.title,#title,h4').first().remove().html())
    #$('#ajax-modal .modal-header h3').html( $('#ajax-modal .modal-body').find('.actions').first().remove().html())

