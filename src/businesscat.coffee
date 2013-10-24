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

images = [
  'http://imgur.com/PaGjotI.jpg',
  'http://imgur.com/HNp4TtH.jpg',
  'http://imgur.com/tMYclqT.jpg',
  'http://imgur.com/DgG3CJD.jpg',
  'http://imgur.com/UKjObcM.jpg',
  'http://imgur.com/iorRW0P.jpg',
  'http://imgur.com/DgmFNr3.jpg',
  'http://imgur.com/w0wuthi.jpg',
  'http://imgur.com/9a8GfA1.jpg',
  'http://imgur.com/BDroxfl.jpg',
  'http://imgur.com/xTBxH96.jpg',
  'http://imgur.com/ncvO5Nl.jpg',
  'http://imgur.com/9dNlOik.jpg',
  'http://imgur.com/gE8hR2x.jpg',
  'http://imgur.com/e4BsPLu.jpg',
  'http://imgur.com/L1A2Esf.jpg',
  'http://imgur.com/9T3rKvL.jpg',
  'http://imgur.com/DHrSBHy.jpg',
  'http://imgur.com/aP3pDrD.jpg',
  'http://imgur.com/F3w78c4.jpg',
  'http://imgur.com/0C5hbEn.jpg',
  'http://imgur.com/l54I3pu.jpg',
  'http://imgur.com/ret6i1P.jpg',
  'http://imgur.com/CRqMjBp.jpg',
  'http://imgur.com/8WsH50B.jpg',
  'http://imgur.com/vARRxc7.jpg',
  'http://imgur.com/srAssQa.jpg',
  'http://imgur.com/GJj4MmB.jpg',
  'http://imgur.com/TyGdG1m.jpg',
  'http://imgur.com/SW8mlDE.jpg',
  'http://imgur.com/74SCEZx.jpg',
  'http://imgur.com/aPrc9au.jpg',
  'http://imgur.com/3cCagym.jpg',
  'http://imgur.com/Ar6w6qD.jpg',
  'http://imgur.com/CS0SHo9.jpg',
  'http://imgur.com/T8lJliS.jpg',
  'http://imgur.com/AEmIduX.jpg',
  'http://imgur.com/BFLs06k.jpg',
  'http://imgur.com/9KDeH5Y.jpg',
  'http://imgur.com/cvu5T4Q.jpg',
  'http://imgur.com/X6XF5OW.jpg',
  'http://imgur.com/QyCmPGg.jpg',
  'http://imgur.com/69xwU1q.jpg'
]

regex = new RegExp jargon.join('|'), 'ig'