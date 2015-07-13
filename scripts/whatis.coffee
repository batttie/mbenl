# Description:
#   What is (X)
#
# Notes:
#   This is to help new people understand our strange terminology in monterey ingress.
#
# Commands:
#whatis 

module.exports = (robot) ->
  robot.hear /what is (.*)/i, (res) ->
  unknown = res.match[1]
  if unknown = "OA"
    message = "/portal show all OA"
   res.send message
