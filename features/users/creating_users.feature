Feature: creating new users

  Scenario: creating a new user
    When I make a POST request to "/users"
    Then my request responds with a 200
    And the new user has state "pending"
