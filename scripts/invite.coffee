#
#
#
slacktoken = process.env.HUBOT_SLACK_TOKEN
team = process.env.HUBOT_SLACK_TEAM_URL

#module.exports = (robot) ->
# robot.hear /invite (.*)/i, (msg) ->
#   useremailraw = msg.match[1]
#   useremail = useremailraw.replace(/m.*\|/gi, "")
#   data = "email=#{useremail}&token=#{slacktoken}&set_active=true" 
#    email: '#{useremail}',
#    token: '#{slacktoken}',
#    set_active: true)
#   http = "https://" + team + "/api/users.admin.invite"  
#   robot.http (http)
#   router.get('/'
#  .header (Content-Type 'application/json')
#    .post data (err,res,body) ->
#      if err
#       msg.send "encountered error #{err}"
#       body = JSON.parse(body)
#      if body.ok
#       msg.send "Success, invite sent to #{usermail}"
#      else
#       msg.send "failed!" + body.error
#      msg.res(400).send "email is required"

#request = require('request')

addSlackMember = (options, callback) ->
  email = options.email
  time = (new Date).getTime()
  slack_team = options.team
  authToken = options.token
  inviteUrl = 'https://' + slack_team + '.slack.com/api/users.admin.invite?t=' + time
  request.post inviteUrl, { form:
    email: email
    channels: autojoinChannels
    token: authToken
    set_active: true
    _attempts: 1 }, (err, httpResponse, body) ->
    callback httpResponse
    return
  return

module.exports = addSlackMember

module.exports = (robot) ->
 robot.hear /invite (.*)/i, (msg) ->
   useremailraw = msg.match[1]
   email = useremailraw.replace(/m.*\|/gi, "")

