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

 robot.http("http://ingress.wikia.com/api/v1/Articles/List?limit=1000")
  .header('accept','json')
  .get()(err,res,body) ->
  wiki = JSON.parse body

 robot.brain.set 'wiki'

#http://ingress.wikia.com/api/v1/Articles/List?limit=1000
