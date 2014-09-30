chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-business-cat', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/businesscat')(@robot)

  it 'does register a hear listener', ->
    expect(@robot.hear).to.have.been.calledWithMatch sinon.match( (val) ->
      val.test /per se/
    )

  it 'does NOT register a hear listener', ->
    expect(@robot.hear).to.not.have.been.calledWith sinon.match( (val) ->
      val.test /cooper seem/
    )
