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

images = require './data/images.json'
jargon = require './data/triggers.json'

if process.env.HUBOT_BUSINESS_CAT_JARGON?
  additionalJargon = (process.env.HUBOT_BUSINESS_CAT_JARGON).split(',')
  jargon = jargon.concat(additionalJargon)

regex = new RegExp "\\b(#{jargon.join('|')})\\b", 'gi'

module.exports = (robot) ->
  robot.hear regex, (msg) ->
    msg.send msg.random images
