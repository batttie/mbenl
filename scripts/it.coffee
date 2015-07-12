querystring = require "querystring"
https = require "https"
 
token = "..."
 
module.exports =
  invite: (email) ->
    data = querystring.stringify
      "token": token
      "email": email
      "channels": "C03U2NULK"
      "set_active": true
      "_attempts": 1
    options =
      host: "enl-monterey.slack.com"
      port: "443"
      path: "/api/users.admin.invite?t=" + (new Date).getTime().toString()
      method: "POST"
      headers:
        "Content-Type": "application/x-www-form-urlencoded"
        "Content-Length": data.length
    console.log("Sending invite to '#{email}' (using token = '#{token}')...")
    req = https.request options, (res) ->
      res.setEncoding("utf8")
      res.on "data", (chunk) ->
        console.log("Response: " + chunk)
    req.write(data)
    req.end()
