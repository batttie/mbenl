#
#
#
#
token = process.env.HUBOT_SLACK_TOKEN





 module.exports = (robot) ->
  robot.hear /invite (.*)/i, (msg) ->
   useremail = msg.match[1]
   msg.send useremail

 robot.hear /token/i, (msg) ->
  msg.send token

