# Description:
#   What is (X)
#
# Notes:
#   This is to help new people understand our strange terminology in monterey ingress.
#
# Commands:
#whatis 

module.exports = (robot) ->
 robot.hear/what is (.*)/i, (msg)
 unknown = msg.match ([1])
  if unknown = "OA"
    msg.send "/portal show all OA"
