# features/views/leagues.feature
Feature: Edit action for leagues

  Scenario: Edit league as a guest
    Given there is no user logged in
    When there is a league
    And the edit path of the league is visited
    Then the path of the league should be rendered
    And the leagues flash message for 'update.permission_failure' should be shown

  Scenario: Edit league as a logged in user
    Given there is a logged in user
    When there is a league
    And the edit path of the league is visited
    Then the path of the league should be rendered
    And the leagues flash message for 'update.permission_failure' should be shown

  Scenario: Edit league as a leagues admin
    Given there is a logged in user
    And the user has the user role 'leagues_admin'
    When there is a league
    And the edit path of the league is visited
    Then the edit path of the league should be rendered

  Scenario: Edit league as an admin
    Given there is a logged in user
    And the user has the user role 'admin'
    When there is a league
    And the edit path of the league is visited
    Then the edit path of the league should be rendered
