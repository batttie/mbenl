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
    total = users.total
    n = -1
    while total - 1 > n
     n = n + 1
     user = users[n]
     msg.http("https://slack.com/api/channels.kick?token=#{token}&channel=#{channel}&user=#{user}&pretty=1")
     .post() (err,res,body) ->
      data = JSON.parse body
      ok = data.ok
      err = data.error
      msg.send "#{ok}\n#{err}\n purge done"
