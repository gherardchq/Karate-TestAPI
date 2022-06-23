Feature: Put user on reqres

  Scenario: Put a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    And request { "name": "Gherard", "job": "Test Automation" }
    When method put
    Then status 200
    And match $.name == 'Gherard'