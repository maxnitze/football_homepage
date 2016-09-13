# features/views/leagues.feature
Feature: Test

  Scenario: View league as a guest
    Given there is a league
    And I visit the path of the league
    Then the leagues attributes should be shown

  Scenario: View league with name Test as a guest
    Given there is a league named Test
    And I visit the path of the league
    Then a league with the name Test should be shown
