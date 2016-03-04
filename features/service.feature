@service

Feature: As a tester, I want to create request data replies in order to test my client's behavior on those replies.

Background: 
  Given I have a rest service

@service.set
@service.get
Scenario Outline: Request a special service reply for a particular path
  When I request a GET for "<response>" from "<path>"
  And I send a GET to "<path>"
  Then I receive "<response>"
Examples:
  | path   | response                        |
  | /test1 | col1,col1\nr1c1,r1c2\nr2c1,r2c2 |

@service.get
Scenario Outline: Request a service reply from a preset file
  When I have a file "<name>" with "<contents>"
  And I send a GET to "<name>"
  Then I receive "<contents>"
Examples: 
  | name | contents                                |
  | temp | One fish, two fish, red fish, blue fish |