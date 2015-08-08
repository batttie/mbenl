module.exports = (robot) ->
  robot.hear /pss/i, (res) ->
  res.sendPrivate "pss what"
