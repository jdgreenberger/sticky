Promise = require 'bluebird'
glob = require 'glob-promise'
path = require 'path'


module.exports = ->

  @Before (scenario) ->
    # Reset the databse for all models to a clean state
    Promise.map glob('./app/models/*.coffee'), (modelPath) ->
      Model = require path.join '../..', modelPath
      Model.sync(force: yes)
