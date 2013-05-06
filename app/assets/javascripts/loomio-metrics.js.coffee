$.externalScript("https://raw.github.com/fuzzytern/loomio-metrics/master/loomio-metrics.js").done (script, textStatus) ->
  console.log( "script loaded " + textStatus )

  $(document).ready ->
    console.log("document ready")
    $(this).lm()


