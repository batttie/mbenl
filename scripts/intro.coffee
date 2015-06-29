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

leaveReplies = [":crying_cat_face:", ":crying_cat_face: Nooooooooo! Anything but that!", "They're dropping like FLIES!"]

module.exports = (robot) ->
  robot.enter (msg) ->
    msg.send msg.random enterReplies

  robot.leave (msg) ->
    msg.send msg.random leaveReplies
