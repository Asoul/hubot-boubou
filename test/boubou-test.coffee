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
    expect(@robot.hear).to.have.been.calledWith(/寶寶[還你妳]?(知道|喜歡|討厭|愛吃)(.*)嗎[\?？]?/i)
    expect(@robot.hear).to.have.been.calledWith(/寶寶[還你妳]好嗎[\?？]?/i)
    expect(@robot.hear).to.have.been.calledWith(/.*[好太真很]?(可怕|恐怖|詭異|奇怪)啊?.*/i)
    