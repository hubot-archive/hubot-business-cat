[![NPM version](http://img.shields.io/npm/v/hubot-business-cat.svg?style=flat)](https://www.npmjs.org/package/hubot-business-cat)
[![Build Status](http://img.shields.io/travis/okize/hubot-business-cat.svg?style=flat)](https://travis-ci.org/okize/hubot-business-cat)
[![Dependency Status](http://img.shields.io/david/okize/hubot-business-cat.svg?style=flat)](https://david-dm.org/okize/hubot-business-cat)
[![Downloads](http://img.shields.io/npm/dm/hubot-business-cat.svg?style=flat)](https://www.npmjs.org/package/hubot-business-cat)

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