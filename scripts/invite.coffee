#
#
#
slacktoken = process.env.HUBOT_SLACK_TOKEN
team = process.env.HUBOT_SLACK_TEAM_URL

module.exports = (robot) ->
 robot.hear /invite (.*)/i, (msg) ->
   useremail = msg.match[1]
   data = JSON.stringify( 
    email: '#{useremail}',
    token: '#{slacktoken}',
    set_active: true)  
   robot.http("https://"+ team + "/api/users.admin.invite")
     .post(data) (err,res,body) ->
      if err
       msg.send "encountered error #{err}"
       body = JSON.parse(body)
      if body.ok
       msg.send "Success, invite sent to #{usermail}"
      else
       msg.send "failed!" + body.error
      msg.status(400).send "email is required"
 
