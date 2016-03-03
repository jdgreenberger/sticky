TDPApi = require './app/tdp_api'
config = require './config'


tdpApi = new TDPApi
tdpApi.start config.port, (err) ->
  throw err if err
  console.log "Server started on port #{config.port}"
