# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
$ ->
  $('#cropBox').cropper
    aspectRatio: 1 / 1,
    crop: (event) ->
      coords = {
        'x': event.detail.x,
        'y': event.detail.y,
        'w': event.detail.width,
        'h': event.detail.height
      }
      update(coords)

  update = (coords) ->
    $('#ambassador_crop_x').val(coords.x)
    $('#ambassador_crop_y').val(coords.y)
    $('#ambassador_crop_w').val(coords.w)
    $('#ambassador_crop_h').val(coords.h)
    updatePreview(coords)

  updatePreview = (coords) ->
    console.log $('#cropBox')
    $('#preview').css
      width: Math.round(100/coords.w * realWidth($('#cropBox'))) + 'px'
      height: Math.round(100/coords.h * realHeight($('#cropBox'))) + 'px'
      marginLeft: '-' + Math.round(100/coords.w * coords.x) + 'px'
      marginTop: '-' + Math.round(100/coords.h * coords.y) + 'px'

  realWidth = (obj) ->
    clone = obj.clone()
    clone.css("visibility","hidden")
    clone.removeClass('cropper-hidden')
    $('body').append(clone)
    width = clone.outerWidth()
    clone.remove()
    return width

  realHeight = (obj) ->
    clone = obj.clone()
    clone.css("visibility","hidden")
    clone.removeClass('cropper-hidden')
    $('body').append(clone)
    height = clone.outerHeight()
    clone.remove()
    return height
