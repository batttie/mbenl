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
    .post() (body) ->
     data = JSON.parse body
    res.send "#{data} Purge done"
