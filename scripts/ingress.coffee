# Description:
#   None
#
# Dependencies:
#  None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   batttie

 module.exports = (robot) ->
  robot.http("http://ingress.wikia.com/api/v1/Articles/List?limit=1000")
   .header('accept','json')
   .get()(res,body) ->
    res ="200"
   wiki = JSON.parse body

  robot.brain.set 'wiki'

#http://ingress.wikia.com/api/v1/Articles/List?limit=1000
