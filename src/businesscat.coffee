# Description:
#   Business cat is summoned when business jargon is used
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_BUSINESS_CAT_JARGON comma-separated list of additional "tiggers"
#
# Commands:
#   Business jargon - summons business cat
#
# Notes:
#   See jargon array for list of trigger phrases
#
# Author:
#   Morgan Wigmanich <okize123@gmail.com> (https://github.com/okize)
urlEncode = require('urlencode')
phrases = require './data/phrases.json'
jargon = require './data/triggers.json'

if process.env.HUBOT_BUSINESS_CAT_JARGON?
  additionalJargon = (process.env.HUBOT_BUSINESS_CAT_JARGON).split(',')
  jargon = jargon.concat(additionalJargon)

regex = new RegExp jargon.join('|'), 'gi'

module.exports = (robot) ->
  robot.hear regex, (msg) ->
    phrase = msg.random phrases
    thing = phrase.split "|"
    url = "http://urlme.me/business/#{urlEncode(thing[0])}/#{urlEncode(thing[1])}"
    msg.send url
