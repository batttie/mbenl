#Description
#Purge script
#
#Dependencies:
#None
#
#Configuration:
#None
#
#Commands:
#None
#


module.exports = (robot) ->
  robot.hear /purge the room/i, (res) ->
    token = process.env.HUBOT_SLACK_TOKEN
    channel = "C03DQDDSK"
    res.http("https://slack.com/api/channels.kick?token=#{token}&channel=#{channel}&user=U08QUP59C&pretty=1")
    .post() (err,res,body) ->
     data = JSON.parse body
     ok = data.ok
     err = data.error
      res.send "#{ok}\n#{err}\n urge done"
