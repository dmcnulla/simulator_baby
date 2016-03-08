@data

Feature: As an inpromptu rest service, I need to store impromptu data and allow it's retrieval.

@data.add
Scenario Outline: I can add and get data
	Given I have data storage
	When I add data as a "<key>" / "<value>" pair
	Then I can get data has the "<key>" / "<value>" pair
Examples: 
  | key   | value                           |
  | test  | { 'whatever': 'hahe' }          |
  | test2 | COL1,COL2\nc1r1,c2r1\nc1r2,c2r2 |
	

@data.file
Scenario Outline: I get data from a file
  Given I have data storage
  When I have a file "<name>" with "<contents>"
  Then I can get data has the "<name>" / "<contents>" pair
Examples: 
  | name | contents                                |
  | temp | One fish, two fish, red fish, blue fish |

@data.nomatch
Scenario: I get no data because nothing matches
  Given I have nothing
  When I request nothing
  Then I get nothing
  