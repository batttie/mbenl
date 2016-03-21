#Description
#Purge script
#
#Dependencies:
#None
#
#Configuration:
#None
#
#Commands:
#None
#


module.exports = (robot) ->
  robot.hear /purge the room/i, (msg) ->
    token = process.env.HUBOT_SLACK_TOKEN
    channel = "C03DG3T3R"
    users = [
                "U02S2C8SX",
                "U02S35GCV",
                "U02S3BDRV",
                "U02S4SQCQ",
                "U02S68RNY",
                "U02S798GY",
                "U02SH5P00",
                "U02TM1YUT",
                "U02UG9AEK",
                "U02UH5BH7",
                "U02UHEQ1T",
                "U02UHPJL3",
                "U02UJSVL0",
                "U02UKB680",
                "U02ULAW3U",
                "U02USSN1P",
                "U0303GJQM",
                "U0309L20L",
                "U030G6EKQ",
                "U030JNPM9",
                "U030L0756",
                "U030LC9C4",
                "U030MU11Y",
                "U030VB3GX",
                "U0313TRAJ",
                "U031LFUKU",
                "U031WSGKZ",
                "U031XFXGV",
                "U031YRN3N",
                "U032KB8FV",
                "U032VP8AF",
                "U033ETD5E",
                "U0343UH70",
                "U0345AMLZ",
                "U0349DSVD",
                "U0358EER1",
                "U035U6D2X",
                "U035ZC3QJ",
                "U03B4HGHZ",
                "U03BXM28Z",
                "U03EJKJBC",
                "U03ETHLAB",
                "U03ETQ0VB",
                "U03FEGNFC",
                "U03FQ7WUL",
                "U03G44M58",
                "U03J5MVDF",
                "U03J6T0AH",
                "U03JCLUT2",
                "U03L1AT0V",
                "U03LDAN1V",
                "U03M40JF1",
                "U03N1SRJX",
                "U03P1K2TH",
                "U03PL8C9M",
                "U03QH65PB",
                "U03UURQ3D",
                "U03VD7QDR",
                "U04042X4W",
                "U041M6UG6",
                "U043XGU75",
                "U045LB59U",
                "U046260C5",
                "U0463C2EN",
                "U046WSW3Z",
                "U04C3N04L",
                "U04JC5577",
                "U04MDPRSQ",
                "U04RJBSMP",
                "U04SCNL5M",
                "U04TH0QDS",
                "U0502KVA0",
                "U0548S1DX",
                "U054LBS8S",
                "U063WFA57",
                "U06FEDXV5",
                "U06HNEV7Y",
                "U06KQHF2S",
                "U06MGEXGS",
                "U06MJPTC2",
                "U06NXKE5B",
                "U06ST7668",
                "U06TWFETC",
                "U06U55MUP",
                "U076WSR4P",
                "U07FKF5EK",
                "U07FRLWTS",
                "U07G09LEQ",
                "U07GJPTHV",
                "U07HCMY79",
                "U07K9JGAV",
                "U080MLGQM",
                "U08FGTKDX",
                "U08FH4XRD",
                "U08NAEBL5",
                "U09FB3FBJ",
                "U09KB85QA",
                "U0AATN1MF",
                "U0BQ03B7A",
                "U0BQ20HM3",
                "U0C2J9R88",
                "U0CN0NNQ5",
                "U0DKY2GKC",
                "U0F8BA0QZ",
                "U0G1V8J76",
                "U0J1SMP8V",
                "U0JKWLPPC",
                "U0SD3FBB5",
                "U0T93510W",
                "U0TJD2H5J",
                "U0TU37955",
                "U0UA3THJQ"
            ]
    user = ""
    total = users.length
    num = -1
    msg.send total
    while total - 1 > num
     num = num + 1
     user = users[num]
     msg.http("https://slack.com/api/channels.kick?token=#{token}&channel=#{channel}&user=#{user}&pretty=1")
     .post() (err,res,body) ->
      data = JSON.parse body
      #ok = data.ok
      #err = data.error
    if total = num
     msg.send "purge done"
