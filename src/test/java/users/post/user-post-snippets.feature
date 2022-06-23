Feature: Reusable scenarios for post a user

@Create
  Scenario: Post a user
    Given url "https://reqres.in/api/users"
    And request { "name": "Gherard", "job": "Test Automation" }
    When method post
    Then status 201
    And def contactId = $.id