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

jargon =
  'action\sitems',
  'all\shands\son\sdeck',
  'at\sthe\send\sof\sthe\sday',
  'best\sof\sbreed',
  'best\spractice(|s)',
  'big(|ger)\spicture',
  'bleeding\sedge',
  'blue\ssky\sthinking',
  'boil\sthe\socean',
  'bottom\sline',
  'burn\srate',
  'circle\sthe\swagons',
  'core\scompetency',
  'core\svalues',
  'customer\scentric',
  'double\sdown',
  'drill\sdown',
  'ducks\sin\sa\srow',
  'elevator\spitch',
  'emotional\sbandwidth',
  'eye\son\sthe\sball',
  'fast\strack',
  'game\splan',
  'gap\sanalysis',
  'get\son\sthe\ssame\spage',
  'go\sthe\sextra\smile',
  'guru',
  'hard\sstop',
  'heavy\slifting',
  'hit\sthe\sground\srunning',
  'hold\sthe\sfort',
  'key\stakeaways',
  'leverage',
  'low\shanging\sfruit',
  'make\shay',
  'move\sthe\sgoal\sposts',
  'move\sthe\sneedle',
  'on\s(my|your)\splate',
  'on\s(my|your)\sradar',
  'out\sof\sthe\sloop',
  'outside\sthe\sbox',
  'paradigm',
  'peel\sthe\sonion',
  '\Wper\sse\W',
  'ping\sme',
  'point\sof\scontact',
  'price\spoint',
  'proactive',
  'put\sthis\sone\sto\sbed',
  'results\sdriven',
  'rock\sstar',
  'rubber\shits\sthe\sroad',
  'siwm\slane',
  'strategic\s.*?',
  'synergy',
  'take\sit\soffline',
  'team\sbuilding',
  'team\splayer',
  'total\squality',
  'touch\sbase',
  'touch\spoints',
  'touch(|ing)\sbase',
  'value\sadd(|ed)',
  'value\sproposition'

images =
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

regex = new RegExp jargon.join('|'), 'ig'