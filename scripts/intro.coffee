#description:
# Entrance/exit scrpt
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
# None
#
introReply = ["Greetings, I am the robot responsible for the care and support of the Monterey Area.  Welcome to Slack"]

module.exports =(robot) ->
robot.enter (msg) ->
msg.reply introReply

