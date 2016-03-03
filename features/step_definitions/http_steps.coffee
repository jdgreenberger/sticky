request = require 'request'


module.exports = ->

  @When /^I make a (GET|POST|PUT|DELETE) request to "([^"]+)" with the body:$/, (method, path, body, done) ->
    uri = "http://localhost:3000#{path}"
    request {method, uri, body}, (err, @response, responseBody) =>
      return done err if err
      done()
