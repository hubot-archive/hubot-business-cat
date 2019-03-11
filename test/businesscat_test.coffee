chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

removeTerm = require('../src/businesscat').removeTerm

describe 'hubot-business-cat', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/businesscat')(@robot)

  afterEach ->
    delete process.env.HUBOT_BUSINESS_CAT_JARGON
    delete process.env.HUBOT_BUSINESS_CAT_OMITTED_JARGON

  it 'does register a hear listener', ->
    expect(@robot.hear).to.have.been.calledWithMatch sinon.match( (val) ->
      val.test /per se/
    )

  it 'does NOT register a hear listener', ->
    expect(@robot.hear).to.not.have.been.calledWith sinon.match( (val) ->
      val.test /cooper seem/
    )

  it 'provides a way to remove terms', ->
    jargon = [1..5]
    newJargon = removeTerm(term, jargon) for term in [3, 99]
    expect(newJargon).to.eql([ 1, 2, 4, 5 ])
