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
  'http://imgur.com/PaGjotI',
  'http://imgur.com/HNp4TtH',
  'http://imgur.com/tMYclqT',
  'http://imgur.com/DgG3CJD',
  'http://imgur.com/UKjObcM',
  'http://imgur.com/iorRW0P',
  'http://imgur.com/DgmFNr3',
  'http://imgur.com/w0wuthi',
  'http://imgur.com/9a8GfA1',
  'http://imgur.com/BDroxfl',
  'http://imgur.com/xTBxH96',
  'http://imgur.com/ncvO5Nl',
  'http://imgur.com/9dNlOik',
  'http://imgur.com/gE8hR2x',
  'http://imgur.com/e4BsPLu',
  'http://imgur.com/L1A2Esf',
  'http://imgur.com/9T3rKvL',
  'http://imgur.com/DHrSBHy',
  'http://imgur.com/aP3pDrD',
  'http://imgur.com/F3w78c4',
  'http://imgur.com/0C5hbEn',
  'http://imgur.com/l54I3pu',
  'http://imgur.com/ret6i1P',
  'http://imgur.com/CRqMjBp',
  'http://imgur.com/8WsH50B',
  'http://imgur.com/vARRxc7',
  'http://imgur.com/srAssQa',
  'http://imgur.com/GJj4MmB',
  'http://imgur.com/TyGdG1m',
  'http://imgur.com/SW8mlDE',
  'http://imgur.com/74SCEZx',
  'http://imgur.com/aPrc9au',
  'http://imgur.com/3cCagym',
  'http://imgur.com/Ar6w6qD',
  'http://imgur.com/CS0SHo9',
  'http://imgur.com/T8lJliS',
  'http://imgur.com/AEmIduX',
  'http://imgur.com/BFLs06k',
  'http://imgur.com/9KDeH5Y',
  'http://imgur.com/cvu5T4Q',
  'http://imgur.com/X6XF5OW',
  'http://imgur.com/QyCmPGg',
  'http://imgur.com/69xwU1q'
]

regex = new RegExp jargon.join('|'), 'ig'