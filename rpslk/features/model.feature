Feature: RPSLK game logic

    Scenario: User inputs a supported gesture RPSLK
      Given a user gesture
      When the game process the round
      Then it returns the result of the round

    Scenario: User beats the computer in a round
      # TODO

    Scenario: Computer beats the user in a round
      # TODO

    @wip
    Scenario Outline: User and computer tie in a round
      Given the user gesture <user_gesture>
      And the computer gesture is the same
      When the game process the round
      Then it report the round as a "tie"

      Examples: Gestures
        | gesture     |
        | rock        |
        | paper       |
        | scissors    |
        | lizard      |
        | spock       |

    Scenario: User wins the whole game
      Given the user has won 2 rounds
      And the user gesture is "rock"
      And the computer gesture is "scissors"
      When the game processes the round
      Then it indicates the user has won the game

    Scenario: Computer wins the whole game
      #TODO
