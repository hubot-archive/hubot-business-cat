# Description:
#   Business cat is summoned when business jargon is used
#
# Commands:
#   [business jargon] - Returns an image of business cat (* see jargon array for list of trigger phrases)
#
# Author:
#   Morgan Wigmanich (okize)

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
  'hard stop',
  'heavy lifting',
  'hit the ground running',
  'hold the fort',
  'key takeaways',
  'low hanging fruit',
  'make hay',
  'move the goal posts',
  'move the needle',
  'on (my|your) plate',
  'on (my|your) radar',
  'out of the loop',
  'outside the box',
  'paradigm',
  'peel the onion',
  'per se',
  'ping me',
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

images = [
  'http://i3.kym-cdn.com/photos/images/original/000/100/100/Something-a-boss-does-Something-a-cat-does.jpg'
]

regex = new RegExp jargon.join('|'), 'ig'

module.exports = (robot) ->
  robot.hear regex, (msg) ->
    msg.send msg.random images
