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
#
# module.exports = (robot) ->
#  robot.http("http://ingress.wikia.com/api/v1/Articles/List?limit=1000")
#   .header('accept','application/json')
#   .get()(body) ->
#
#   wiki == JSON.parse body
#
#  robot.brain.set 'wiki'
#
#http://ingress.wikia.com/api/v1/Articles/List?limit=1000

 json = require './ingresswikia.json'
 id = "#{json.id}"
 title = "#{json.title}"


 module.exports = (robot) ->
  robot.hear /!iw (.*)/i, (msg) ->
 term = msg.match([1])
 if term = title
  msg.reply id
 else
   msg.reply "item not found"

  

