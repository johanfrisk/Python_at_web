Feature: fibonacci sequence generator
  In order to demonstrate BDD
  As a developer
  I want to spec, test, and code something relatively simple

  Scenario Outline: compute the fib sequence for N integers
    Given a count of '<count>'
    When I call the fib function
    Then it should return the sequence '<sequence>'
    And the sequence is a list of integers

    Examples: Counts
      | count | sequence                 |
      | 1     | 1                        |
      | 5     | 1, 1, 2, 3, 5            |
      | 8     | 1, 1, 2, 3, 5, 8, 13, 21 |

  Scenario: return nothing for a negative count
    Given a count of '-1'
    When I call the fib function
    Then it should return an empty sequence

  Scenario: fail for non-integer count
    Given a non-integer count of 'foobar'
    When I call the fib function
    Then it should throw a TypeError exception
