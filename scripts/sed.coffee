# Description:
#   Corrects incorrect sed syntax

module.exports = (robot) ->

  robot.hear /s\/(.*)\/(.*[^\/])$/i, (res) ->
    res.reply 's;$;/;'
    res.send 'i.e. `s/' + res.match[1] + '/' + res.match[2] + '/`'
    res.reply 'note the trailing /, which you were missing.'
