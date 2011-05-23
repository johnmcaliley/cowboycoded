Feature: cucumber steps
  In order to use cuc steps in cowboycoded
  A user should be able to
  generate cucumber steps

  Scenario: run cucumber steps generator
    Given a working directory
    And I run the "cowboycoded:cucumber_step" generator
    Then a file named "file_steps.rb" is created in the "/features/step_definitions/" directory
    And I cleanup the generated cucumber step files