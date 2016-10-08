# Description:
#   Responds to `!next` with a helpful message.
#
# Dependencies:
#   none
#
# Configuration:
#   HUBOT_NEXT_MESSAGE: The message to repond to the trigger with. Defaults to "Another Satisified Customer! NEXT!"
#
# Commands:
#   !next - responds with the message
#
# Author:
#   Ari Porad (@ariporad) <ari@ariporad.com>
#
# License:
#   MIT License: https://ariporad.mit-license.org
#

module.exports = (robot) ->
  robot.hear /\!next/i, (res) ->
    res.send process.env.HUBOT_NEXT_MESSAGE || "Another Satisified Customer! NEXT!"
