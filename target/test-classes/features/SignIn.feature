Feature: Sign In Feature

  Background: 
    Given User is on retail website
    When User click on Sign in option

  @SignIn
  Scenario: Verify user can sign in into Retail Application
    And User enter email 'ozi@gmail.com' and password 'Tek@12345'
    And User click on login button
    Then User should be logged in into Account

  Scenario Outline: Verify user can login with different email and pass
    And User enter email <email> and password <password>
    And User click on login button
    Then User should be logged in into Account

    Examples: 
      | email                      | password     |
      | 'ozeerol@tekschool.com'    | 'Ozge@12345' |
      | 'ozgeturkey@tekschool.com' | 'Ozge@12345' |
      | 'ozgeusa@tekschool.com'    | 'Ozge@12345' |

  @signUp
  Scenario: Verify user can create an account into Retail Website
    And User click on Create New Account button
    And User fill the signUp information with below data
      | name     | email                  | password   | confirmPassword |
      | panthers | ozzee123@tekschool.com | Ozge@12345 | Ozge@12345      |
    And User click on SignUp button
    Then User should be logged into account page

  @signUp
  Scenario Outline: Verify user can create an account into Retail Website
    And User click on Create New Account button
    And User fill the signUp information with below data
      | name   | email   | password   | confirmPassword   |
      | <name> | <email> | <password> | <confirmPassword> |
    And User click on SignUp button
    Then User should be logged into account page

    Examples: 
      | name | email                    | password  | confirmPassword |
      | ozge | ozgee213@tekschool.us    | Tek@12345 | Tek@12345       |
      | ozge | ozgeeeroll2@tekschool.us | Tek@85236 | Tek@85236       |
      | ozge | ozzii512@tekschool.us    | Ket@8899  | Ket@8899        |
      | ozge | ozeeturkey@tekschool.us  | Tek@12345 | Tek@12345       |
