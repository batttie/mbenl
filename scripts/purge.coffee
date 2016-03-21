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
    res.http("https://slack.com/api/channels.kick?token=#{token}&channel=C03DQDDSK&user=U08QUP59C&pretty=1")
    .get() (err, res, body) ->
    res.send "#{err} #{res} #{body} Purge done"
