Feature: Workflow add

  Adding a Workflow is possible by providing a name for it, and either starting out with an empty one, or as a duplication of a selectable existing one.

  Background:
    Given there are Workflows called ci, deploy, _setup

  Scenario: User opens the Workflow add
    When User selects the Workflow add button
    Then the Workflow add popup appears

  Scenario: User creates an empty Workflow
    Given The Workflow add popup is open
    When User enters the name test
    * User selects Empty Workflow from the based on dropdown
    * User confirms Workflow add
    Then the Workflow add popup disappears
    And the test Workflow is created as an empty Workflow

  Scenario: User creates a Workflow based on another Workflow
    Given The Workflow add popup is open
    When User enters the name test
    * User selects ci from the based on dropdown
    * User confirms Workflow add
    Then the Workflow add popup disappears
    And the test Workflow is created with the same Steps & description as the ci Workflow
