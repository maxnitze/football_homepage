# features/views/leagues.feature

Feature: Show action for leagues

  Scenario: View league as guest
    Given there is a league
    And the path of the league is visited
    Then the leagues attributes should be shown
    And PENDING: does not show edit league button

  Scenario: View league with name 'Test' as guest
    Given there is a league named 'Test'
    And the path of the league is visited
    Then a league with the name 'Test' should be shown
    And PENDING: does not show edit league button

  Scenario: View league as a logged in user
    Given there is a logged in user
    When there is a league
    And the path of the league is visited
    Then the leagues attributes should be shown
    And PENDING: does not show edit league button

  Scenario: View league with name 'Test' as a logged in user
    Given there is a logged in user
    When there is a league named 'Test'
    And the path of the league is visited
    Then a league with the name 'Test' should be shown
    And PENDING: does not show edit league button

  Scenario: View league as a leagues admin
    Given there is a logged in user
    And the user has the user role 'leagues_admin'
    When there is a league
    And the path of the league is visited
    Then the leagues attributes should be shown
    And PENDING: shows edit league button

  Scenario: View league with name 'Test' as a leagues admin
    Given there is a logged in user
    And the user has the user role 'leagues_admin'
    When there is a league named 'Test'
    And the path of the league is visited
    Then a league with the name 'Test' should be shown
    And PENDING: shows edit league button

  Scenario: View league as an admin
    Given there is a logged in user
    And the user has the user role 'admin'
    When there is a league
    And the path of the league is visited
    Then the leagues attributes should be shown
    And PENDING: shows edit league button

  # TODO shows edit league button
  Scenario: View league with name 'Test' as an admin
    Given there is a logged in user
    And the user has the user role 'admin'
    When there is a league named 'Test'
    And the path of the league is visited
    Then a league with the name 'Test' should be shown
    And PENDING: shows edit league button
