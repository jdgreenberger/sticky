express = require 'express'
exprestive = require 'exprestive'
http = require 'http'


class TDPApi

  constructor: ->
    app = express()
    app.use exprestive()
    @httpServer = http.Server app


  start: (port, done) ->
    @httpServer.listen port, done


  stop: (done) ->
    @httpServer.close done


module.exports = TDPApi
