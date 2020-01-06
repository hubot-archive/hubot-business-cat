# Description:
#   Business cat is summoned when business jargon is used
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_BUSINESS_CAT_JARGON comma-separated list of additional "tiggers"
#   HUBOT_BUSINESS_CAT_OMITTED_JARGON comma-separated list of triggers to ignore
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

removeTerm = (term, arrayToDeleteFrom) ->
  index = arrayToDeleteFrom.indexOf term
  if index > -1
    arrayToDeleteFrom.splice index, 1
  arrayToDeleteFrom

if process.env.HUBOT_BUSINESS_CAT_JARGON?
  additionalJargon = (process.env.HUBOT_BUSINESS_CAT_JARGON).split(',')
  jargon = jargon.concat(additionalJargon)

if process.env.HUBOT_BUSINESS_CAT_OMITTED_JARGON?
  omittedJargon = (process.env.HUBOT_BUSINESS_CAT_OMITTED_JARGON).split(',')
  jargon = removeTerm(term, jargon) for term in omittedJargon

if process.env.HUBOT_BUSINESS_CAT_FREQUENCY? > 0
  frequency = Math.floor(process.env.HUBOT_BUSINESS_CAT_OMITTED_JARGON)
else
  frequency = 1

regex = new RegExp jargon.join('|'), 'gi'

exports = module.exports = (robot) ->
  robot.hear regex, (msg) ->
    if !(Math.floor(Math.random() * frequency)))
      msg.send msg.random images

exports.removeTerm = removeTerm

