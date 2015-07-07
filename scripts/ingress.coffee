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

 json1 = require './ingresswikia.json'
# json = json1[1]
# id = "#{json.items.id}"
# title = "#{json.items.title}"
 vi = "hi"

 module.exports = (robot) ->
  robot.hear /!iw (.*)/i, (msg) ->
   defname = escape(msg.match[1])
   if {defname} = {title}
    msg.reply {id}
   else
    msg.reply "item not found"

  robot.hear /!test (.*)/i, (msg) ->  
   test  = escape(msg.match[1])
   msg.reply "i hear you #{test}"
