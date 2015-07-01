#intro
#
#
#
#
module.exports = (robot) ->
 robot.respond /has joined (*)
  channeltype == msg.match(1)
  If channeltype == "#testing"
   msg.reply "Weslcome to testing"
  Else
   msg.reply "Welcome to Slack"

