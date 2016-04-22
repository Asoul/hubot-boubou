# Description:
#   Make hubot response 寶寶 style
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   寶寶知道<something>嗎? - 寶寶知道<something>，只是寶寶不說
#   寶寶還好嗎? - 寶寶心裡苦，只是寶寶不說
#   好可怕啊 - 嚇死寶寶了
#
# Author:
#   Asoul Yang <azx754@gmail.com>

module.exports = (robot) ->
  robot.hear /寶寶[你妳]?知道(.*)嗎[\?？]?/i, (msg) ->
    
    word = msg.match[1]

    # Remove extra whitespace
    if word.slice(-1) is ' '
      word = word.slice(0, word.length - 1)

    msg.send "寶寶知道#{word}，只是寶寶不說"

  robot.hear /寶寶還好嗎[\?？]?/i, (msg) ->
    msg.send "寶寶心裡苦，只是寶寶不說"

  robot.hear /.*[好太真很]?(可怕|恐怖|詭異|奇怪)啊?.*/i, (msg) ->
    msg.send "嚇死寶寶了"
