if typeof Etc is 'undefined'
  Etc = {}

Etc.nl2br = (str) ->
  #var breakTag = (is_xhtml || typeof is_xhtml === 'undefined') ? '<br ' + '/>' : '<br>'; // Adjust comment to avoid issue on phpjs.org display
  breakTag = '<br>'
  return (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, '$1' + breakTag + '$2')

Etc.noLineBreaks = (str) ->
  noStr = str.replace(/(\r\n|\n|\r)/gm, '')
  return noStr



Etc.pushArray = (arr, arr2) ->
  arr.push.apply(arr, arr2)
  return arr