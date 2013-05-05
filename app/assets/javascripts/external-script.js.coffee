# - This function is used to asynchronously load the loomio-metrics
# - script from our metrics server, or from the browser's cach if 
# - it's been loaded before

$.externalScript = (url, options) ->

  # allow user to set any option except for dataType, cache, and url
  options = $.extend(options or {},
    dataType: "script"
    cache: true
    url: url
  )

  # Use $.ajax() since it is more flexible than $.getScript
  # Return the jqXHR object so we can chain callbacks
  $.ajax options
