MyShop.Variant_typsNew = MyShop.Variant_typsCreate = MyShop.Variant_typsEdit = MyShop.Variant_typsUpdate =
  init: ->
    @_handleCorrectChecked()
    $('.select-material').material_select()

  _handleCorrectChecked: ->
    $('#answers').on 'change', '.correct-answer', ->
      $('.correct-answer:checked').prop('checked', false)
      $(@).prop('checked', true)
