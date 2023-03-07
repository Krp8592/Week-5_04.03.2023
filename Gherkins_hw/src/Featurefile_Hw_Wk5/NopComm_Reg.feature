Feature: Nopcommerce Registration

  As a user I want to check the register functionality of NopCommerce

  Background: I am on NopCommerce Registration page
    Given     I open the google chrome browser
    When      I open Url https://demo.nopcommerce.com/register
    Then      I am on NopCommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory
  field (*) of registration page
    When            I enter first name "<First Name>"
    And             I enter last name "<Last Name>"
    And             I enter Email address "<Email>"
    And             I enter password "<password>"
    And             I enter confirm password "<confirm Password>"
    And             Click on register button
    Then            I can see an error message "<error message>"
    And             I am not able to register

    Examples:
      | First Name | Last Name | Email            | password | confirm Password | error message                              |
      | ""         | Bakshi    | bakshi@gmail.com | 456897   | 456897           | Please Enter First Name                    |
      | Rohan      | ""        | bakshi@gmail.com | 456897   | 456897           | Please Enter Last  Name                    |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   | 456897           | Please Enter Valdi Password                |
      | Rohan      | Bakshi    | bakshi@gmail.com | ""       | 456897           | Password is Required                       |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   | ""               | Confirm Password is Required               |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   | 456879           | Password and confirm password do not match |
      | Rohan      | Bakshi    | bakshi@gmail.com | 45689    | ""               | Minimum 6 charactor password is required   |
      | ""         | ""        | ""               | ""       | ""               | Mandatory (*) fields is required           |

  Scenario: I should be able to select any one radio button from Gender label of your personal details section
    Given   I am on Gender label of Your personal details section
    When    I select "Male" radio button
    And     I select "Female" radio button
    Then    I am able to select any one of the radio button

  Scenario Outline: I should be able to Select Day, Month and Year from drop down list of Date of Birth Field
    Given           I am on Date of Birth field of your personal detail section
    When            I select day "<Day>"
    And             I select month "<Month>
    And             I select year  "<Year>"
    Then            I am able to select Day, Month and year from drop down list

    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the Newsletter box on options section
    Given   I am on Newsletter lable on Options section
    When    I click on Newsletter checkbox
    And     I again click on Newsletter checkbox
    Then    I am able to check and uncheck the box next to newsletter lable

  Scenario: I should be able to register with valid mandatory (*) field on registration page
    When    I enter First Name "Rohan"
    And     I enter Last name "bakshi"
    And     I enter Email "bakshi@gmail.com"
    And     I enter Password "456798"
    And     I enter Confirm Password "456798"
    Then    I am able to register successfully
