#intro
#
#
#
#
#module.exports = (robot) ->
# robot.respond /has joined (.*)
#  channeltype == res.match(1)
#  If channeltype == "#testing"
#   msg.reply "Weslcome to testing"
#  Else
#   msg.reply "Welcome to Slack"
module.exports = (robot) ->
 robot.respond /open the (.*) doors/i, (res) ->
    doorType = res.match[1]
    if doorType is "pod bay"
      res.reply "I'm afraid I can't let you do that."
    else
      res.reply "Opening #{doorType} doors"
