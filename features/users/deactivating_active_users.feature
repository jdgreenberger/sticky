Feature: deactivating active users

  Background:
    Given a user with id 123 and state "active"


  Scenario: Admins can deactivate users
    Given I am authenticated as an admin
    When I make a PUT request to "/users/123" with the body:
      """
      { "state": "deactivated" }
      """
    Then my request responds with 200
    And user 123 has state "deactivated"


  Scenario: Users cannot deactivate users
    Given I am authenticated as a user
    When I make a PUT request to "/users/123" with the body:
      """
      { "state": "deactivated" }
      """
    Then my request responds with 403
    And user 123 has state "active"


  Scenario: Advisors cannot deactivate users
    Given I am authenticated as an advisor
    When I make a PUT request to "/users/123" with the body:
      """
      { "state": "deactivated" }
      """
    Then my request responds with 403
    And user 123 has state "active"
