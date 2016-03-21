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
    msg.send "NOOOO NOT AGAIN"
    #token = process.env.HUBOT_SLACK_TOKEN
    #channel = "C03DG3T3R"
    #users = []
    #user = ""
    #total = users.length
    #num = -1
    #msg.send total
    #while total - 1 > num
     #num = num + 1
     #user = users[num]
     #msg.http("https://slack.com/api/channels.kick?token=#{token}&channel=#{channel}&user=#{user}&pretty=1")
     #.post() (err,res,body) ->
      #data = JSON.parse body
      #ok = data.ok
      #err = data.error
    #if total = num
     #msg.send "purge done"
