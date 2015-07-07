#
#
#
slacktoken = process.env.HUBOT_SLACK_TOKEN
team = process.env.HUBOT_SLACK_TEAM_URL
module.exports = (robot) ->
 robot.hear /invite (.*)/i, (msg) ->
   useremail = msg.match[1]
   data = 
    "email": "#useremail",
    "token": "#slacktoken",
    "set_active": "true"   
   msg.send data
