#Description
#Entrance/exit scrpt
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

enterReplies = ["WELCOME TO THE THUNDERDROME", "WELCOME TO THE JUUUUUNGLLLEEEEE!"]
intro = ["Welcome to the MontereyBay area Enlightened Chat"]
test = ["this is the test channell"]


leaveReplies = [":crying_cat_face:", ":crying_cat_face: Nooooooooo! Anything but that!", "They're dropping like FLIES!"]

module.exports = (robot) ->
  robot.enter (msg) ->
if channel is #testing
msg.reply test
else   
 msg.reply intro

  robot.leave (msg) ->
    msg.reply msg.random leaveReplies
