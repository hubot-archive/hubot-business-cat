[![NPM version](https://badge.fury.io/js/hubot-business-cat.png)](http://badge.fury.io/js/hubot-business-cat) [![NPM version](https://david-dm.org/okize/hubot-business-cat.png)](https://david-dm.org/okize/hubot-business-cat) [![Build Status](https://secure.travis-ci.org/okize/hubot-business-cat.png)](http://travis-ci.org/okize/hubot-business-cat)

# Hubot: Business Cat

Business cat is summoned when business jargon is used

![It's business time!](https://raw.github.com/okize/hubot-business-cat/gh-pages/animated-business-cat.gif)

## Installation

Run the following command to install this module as a Hubot dependency

```
$ npm install hubot-business-cat --save
```


Confirm that `hubot-business-cat` appears as a dependency in your Hubot `package.json` file.

```javascript
"dependencies": {
  "hubot":              "2.x",
  "hubot-scripts":      "2.x",
  "hubot-business-cat": "1.0.x"
}
```


To enable the script, add the `hubot-business-cat` entry to the `external-scripts.json` file (you may need to create this file).
```
  ["hubot-business-cat"]
```