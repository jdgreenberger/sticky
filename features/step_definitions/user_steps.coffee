User = require '../../app/models/user'


module.exports = ->

  @Given /^a user with id (\d+) and state "([^"]+)"$/, (userId, state) ->
    User.create {
      id: parseInt userId
      state: state
    }
