chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-business-cat', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    # @msg =
    #   send: sinon.spy()
    #   random: sinon.spy()
    @businesscat_module = require('../src/businesscat')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/bottom line/)

  # it 'does NOT register a hear listener', ->
  #   expect(@robot.hear).to.not.have.been.calledWith(/cooper seem/)

  # it 'should return an image url', ->
  #   cb = @robot.respond.firstCall.args[1]
  #   cb(@msg)
  #   expect(@msg.send).to.have.been.calledWithMatch(/*.jpg/)
