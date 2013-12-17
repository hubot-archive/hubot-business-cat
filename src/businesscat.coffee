# Description:
#   Business cat is summoned when business jargon is used
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   business jargon - summons business cat
#
# Notes
#   See jargon array for list of trigger phrases
#
# Author:
#   Morgan Wigmanich <okize123@gmail.com> (https://github.com/okize)

module.exports = (robot) ->
  robot.hear regex, (msg) ->
    msg.send msg.random images

images = require 'images'

jargon = [
  'action items',
  'all hands on deck',
  'at the end of the day',
  'best of breed',
  'best practice(|s)',
  'big(|ger) picture',
  'bleeding edge',
  'blue sky thinking',
  'boil the ocean',
  'bottom line',
  'burn rate',
  'circle the wagons',
  'core competency',
  'core values',
  'customer centric',
  'double down',
  'drill down',
  'ducks in a row',
  'elevator pitch',
  'emotional bandwidth',
  'eye on the ball',
  'fast track',
  'game plan',
  'gap analysis',
  'get on the same page',
  'go the extra mile',
  'guru',
  'hammer(ing) away',
  'hard stop',
  'hit the ground running',
  'hold the fort',
  'key takeaways',
  'leverage',
  'low hanging fruit',
  'make hay',
  'move the goal posts',
  'move the needle',
  'on (my|your) plate',
  'on (my|your) radar',
  'out of the loop',
  'out(side|\\\sof) the box',
  'paradigm',
  'peel the onion',
  '(\\\W|^)per se(\\\W|$)',
  '(\\\W|^)ping me(\\\W|$)',
  'point of contact',
  'price point',
  'proactive',
  'put this one to bed',
  'results driven',
  'rock star',
  'rubber hits the road',
  'siwm lane',
  'strategic .*?',
  'synergy',
  'take it offline',
  'team building',
  'team player',
  'total quality',
  'touch base',
  'touch points',
  'touch(|ing) base',
  'value add(|ed)',
  'value proposition'
]

regex = new RegExp jargon.join('|'), 'ig'