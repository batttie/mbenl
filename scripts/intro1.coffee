#intro
#
#
#
#
module.exports = (robot) ->
 robot.hear /has joined (.*)/i, (res) ->
  channeltype == res.match(1)
  if channeltype == "#testing"
   msg.reply "Weslcome to testing"
  else
   msg.reply "Welcome to Slack"
#module.exports = (robot) ->
# robot.hear /open the (.*) doors/i, (res) ->
#    doorType = res.match[1]
#    if doorType is "pod bay"
#      res.reply "I'm afraid I can't let you do that."
#    else
#      res.reply "Opening #{doorType} doors"
