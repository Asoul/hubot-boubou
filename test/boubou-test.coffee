chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'boubou', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()

    require('../src/boubou')(@robot)

  it 'registers three hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/寶寶[你妳]?知道(.*)嗎[\?？]?/i)
    expect(@robot.hear).to.have.been.calledWith(/寶寶還好嗎[\?？]?/i)
    expect(@robot.hear).to.have.been.calledWith(/.*[好太真很]?(可怕|恐怖|詭異|奇怪)啊?.*/i)
    