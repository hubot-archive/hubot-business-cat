[![NPM version](http://img.shields.io/npm/v/hubot-business-cat.svg?style=flat)](https://www.npmjs.org/package/hubot-business-cat)
[![Build Status](http://img.shields.io/travis/hubot-scripts/hubot-business-cat.svg?style=flat)](https://travis-ci.org/hubot-scripts/hubot-business-cat)
[![Dependency Status](http://img.shields.io/david/hubot-scripts/hubot-business-cat.svg?style=flat)](https://david-dm.org/hubot-scripts/hubot-business-cat)
[![Downloads](http://img.shields.io/npm/dm/hubot-business-cat.svg?style=flat)](https://www.npmjs.org/package/hubot-business-cat)

# Hubot: Business Cat

Business cat is summoned when business jargon is used

![It's business time!](https://raw.github.com/hubot-scripts/hubot-business-cat/gh-pages/animated-business-cat.gif)

## Installation

Run the following command to install this module as a Hubot dependency

```
$ npm install hubot-business-cat --save
```

Add the **hubot-business-cat** to your `external-scripts.json` (you may need to create this file).

```
["hubot-business-cat"]
```

## Configuration

If you would like business jargon triggers that are not in the plugin, [pull requests](https://github.com/hubot-scripts/hubot-business-cat/pulls) are welcome. Additionally, the environment variables HUBOT_BUSINESS_CAT_JARGON and HUBOT_BUSINESS_CAT_OMITTED_JARGON can be used with a comma-separated list to extend or reduce the triggers, like so:

```
HUBOT_BUSINESS_CAT_JARGON='more,jargon,ideat(e|ion)'
HUBOT_BUSINESS_CAT_OMITTED_JARGON='in the loop,takeaway'
```

If you think business cat triggers too often, you can also reduce the probability of a response by setting the variable HUBOT_BUSINESS_CAT_FREQUENCY to a positive integer value, giving a one-in-HUBOT_BUSINESS_CAT_FREQUENCY chance of replying.  if not set, this defaults to the existing 100% chance of a response.
```
# a 50% chance of responding:  (one of two)
HUBOT_BUSINESS_CAT_FREQUENCY=2
```
```
# a 25% chance of responding:  (one in four)
HUBOT_BUSINESS_CAT_FREQUENCY=4
```
```
# a 1% chance of responding:  (one in one-hundred)
HUBOT_BUSINESS_CAT_FREQUENCY=100
```