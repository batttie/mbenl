#


#var1 = "mailto:test@tes.com|test@test.com"
#module.exports = (robot) ->
#  robot.hear /test/i, (msg) ->
#   var1.replace /m.*\|g, "" 
#   msg.reply var1

var2 = "mailto:t@T.com|t@t.com"
module.exports = (robot) ->
 robot.hear /test/i, (msg)  -> 
  var3 = var2.replace(/m.*\|/gi, "")
  msg.reply var3


#module.exports = (robot) ->
# var1 = mailto:test@test.com|test@test.com
#  robot.hear/test/i, (msg)
#  var1.replace(mailto:(?:[a-zA-Z0-9!#$&'*+/=?^_`{|}~-]|%[0-9a-fA-F]{2})+(?:\.(?:[a-zA-Z0-9!#$&'*+/=?^_`{|}~-]|%[0-9a-fA-F]{2})+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9]+)+[|]?/g -> var2
#  msg.send var2

