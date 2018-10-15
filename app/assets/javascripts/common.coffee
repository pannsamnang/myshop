MyShop.Common =
  init: ->
    @_collapseButton()
    @_toast()
    @_setMaterializeSelect()

  _collapseButton: ->
    $(document).ready ->
      $('.sidenav').sidenav()

  _setMaterializeSelect: ->
    $('select.material-select').formSelect();

  _toast: ->
    dataToast = ''
    if $('#flash_notice').text() != ''
      dataToast = $('#flash_notice').text()
      M.toast({html: dataToast}, 5000)
    else if $('#flash_alert').text() != ''
      dataToast = $('#flash_alert').text()
      M.toast({html: dataToast}, 5000)
