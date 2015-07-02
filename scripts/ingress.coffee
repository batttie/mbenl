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
 vi = "hi"

 module.exports = (robot) ->
  robot.respond /!iw (.*)/i, (msg) ->
 
 deftype = msg.match[1]
 if deftype  = title
  msg.send #{id}
 else
   msg.reply "item not found"

  


