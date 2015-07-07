#
#
#
#
token = process.env.HUBOT_SLACK_TOKEN
team = process.env.HUBOT_SLACK_TEAM_URL




module.exports = (robot) ->
 robot.hear /invite (.*)/i, (msg) ->
  useremail = msg.match[1]
  msg.send useremail

 robot.hear /token/i, (msg) ->
  msg.send token

data = JSON.stringfy({
          email: useremail,
          token: token,
          set_active: true
 })

 robot.hear /data/i, (msg) ->
  msg.send data
