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
    users = [
                "U02S35GCV",
                "U02S3BDRV",
                "U02UL7VF4",
                "U03B4HGHZ",
                "U03EJKJBC",
                "U0402BEPV",
                "U046260C5",
                "U046WSW3Z",
                "U06N0L8PQ",
                "U07K9JGAV",
                "U08QUP59C",
                "U09KB85QA"
            ]
    user = ""
    total = users.length
    num = -1
    msg.send total
    while total - 1 > num
     num = num + 1
     user = users[num]
     msg.http("https://slack.com/api/channels.kick?token=#{token}&channel=#{channel}&user=#{user}&pretty=1")
     .post() (err,res,body) ->
      data = JSON.parse body
      #ok = data.ok
      #err = data.error
    msg.send "purge done"
