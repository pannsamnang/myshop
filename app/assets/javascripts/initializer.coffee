MyShop.Initializer =
  exec: (pageName) ->
    if pageName && MyShop[pageName]
      MyShop[pageName]['init']()

  currentPage: ->
    return '' unless $('body').attr('id')

    bodyId      = $('body').attr('id').split('-')
    action      = MyShop.Util.capitalize(bodyId[1])
    controller  = MyShop.Util.capitalize(bodyId[0])
    controller + action

  init: ->
    MyShop.Initializer.exec('Common')
    if @currentPage()
      MyShop.Initializer.exec(@currentPage())

$(document).on 'ready page:load', ->
  MyShop.Initializer.init()
