Feature: activating pending users

  Background:
    Given a user with id 123 and state "pending"


  Scenario: Admins can activate users
    Given I am authenticated as an admin
    When I make a PUT request to "/users/123" with the body:
      """
      { "state": "activated" }
      """
    Then my request responds with 200
    And user 123 has state "activated"


  Scenario: Users cannot activate users
    Given I am authenticated as a user
    When I make a PUT request to "/users/123" with the body:
      """
      { "state": "activated" }
      """
    Then my request responds with 403
    And user 123 has state "pending"


  Scenario: Advisors cannot activate users
    Given I am authenticated as an advisor
    When I make a PUT request to "/users/123" with the body:
      """
      { "state": "activated" }
      """
    Then my request responds with 403
    And user 123 has state "pending"
