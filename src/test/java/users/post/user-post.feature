Feature: Post user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users"
    * request { "name": "#(name)", "job": "#(job)" }

  Scenario Outline: Post a user
    When method post
    Then status 201

    Examples:
    |name|job|
    |Gherard|QA Automation|
    |Leslie|Scrum Master|
    |Miguel|Frontend|

  Scenario: Post a user without job
    And request { "name": "Gherard" }
    When method post
    Then status 201

  Scenario: Post a user with name invalid
    And request { "name": "$%&%", "job": "QA Automation" }
    When method post
    Then status 201