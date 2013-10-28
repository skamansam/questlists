
jQuery(document).ready ($) ->
  $('*[data-db-key]').each ->
    db_key = $(this).attr('data-db-key')
    db_val = localStorage.getItem(db_key)
    console.log("Found key: ",db_key,db_val)

    #do some conditrional setting based on type of input
    if $(this).is(':checkbox')
      $(this).attr('checked',db_val)

    $(this).change ->
      if $(this).is(':checkbox')
        localStorage.setItem(db_key, $(this).is(':checked') )
