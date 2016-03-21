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
  robot.hear /purge the room/i, (msg) ->
    token = process.env.HUBOT_SLACK_TOKEN
    channel = "C03DQDDSK"
    users = ["U06N0L8PQ","U08QUP59C"]
    user = users[0]
    msg.http("https://slack.com/api/channels.kick?token=#{token}&channel=#{channel}&user=#{user}&pretty=1")
    .post() (err,res,body) ->
     data = JSON.parse body
     ok = data.ok
     err = data.error
     msg.send "#{ok}\n#{err}\n purge done"
