chai = require "chai"
sinon = require "sinon"
chai.use require "sinon-chai"

expect = chai.expect

describe "Business Cat!", ->
  businesscat_module = require("../src/businesscat")

  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()
      random: sinon.spy()
    @businesscat_module = businesscat_module(@robot)

  describe "Summon business cat", ->

    it 'registers a hear listener', ->
      expect(@robot.hear).to.have.been.calledWith(/we should create a strategic partnership/)

    it 'registers a hear listener', ->
      expect(@robot.hear).to.have.been.calledWith(/we should forge a new paradigm/)

    it 'registers a hear listener', ->
      expect(@robot.hear).to.have.been.calledWith(/you should see the bigger picture/)