chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'Business Cat:', ->
  businesscat_module = require('../src/businesscat')

  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()
      random: sinon.spy()
    @businesscat_module = businesscat_module(@robot)

  describe 'summon a business cat', ->

    it 'should register a hear listener', ->
      expect(@robot.hear).to.have.been.calledWith(/we should create a strategic partnership/)

    # it 'should NOT register a hear listener', ->
    #   expect(@robot.hear).not.to.have.been.calledWith(/cooper seem/)

    # it 'should return an image url', ->
    #   cb = @robot.respond.firstCall.args[1]
    #   cb(@msg)
    #   expect(@msg.send).to.have.been.calledWithMatch(/*.jpg/)
