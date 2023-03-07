Feature: Demo NopCommerce's top menu acceptance criteria

  As a user, I would like to check acceptance criteria of NopCommerce top menu

  Background: User is on give URL
    When User type URL https://demo.nopcommerce.com
    And  User clicks on enter button
    Then User is on given URL

  Scenario: Verify that user can navigate to Books Category
    Given   User is on Given URL
    When    User clicks on Books tab on Top Menu
    Then    User is navigated to Books Category page

  Scenario: Verity that user can see the Books category page with filters and list of products
    Given   User is on given URL
    When    Clicks on Books tab on Top Menu
    And     Checks filters and list tab
    Then    Books category has been displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filter on Book category page
    Given   User is on Book Category page
    When    User is on BoOk Category Page
    And     Check 'Short By' filter is present
    Then    'Short by' filter is available on Book Category Page

  Scenario: Verify that user can see 'Display' filter on Book category page
    Given   User is on Book Category page
    When    User is on BoOk Category Page
    And     Check 'Display' filter is present
    Then    'Display' filter is available on Book Category Page

  Scenario: Verify that user can see 'Grid' tab on Book category page
    Given   User is on Book Category page
    When    User is on BoOk Category Page
    And     Check 'Grid' tab is present
    Then    'Grid' tab is available on Book Category Page

  Scenario: Verify that user can see 'List' tab on Book category page
    Given   User is on Book Category pag
    When    User is on BoOk Category Page
    And     Check 'List' tab is present
    Then    'List' tab is available on Book Category Page

  Scenario: Verify that user can see 'Name A to Z' selection is present in 'Sort by' filter
    Given   User is on Book Category page
    When    User is on BoOk Category Page
    And     Click on 'Sort By' Filter
    And     Check that 'Name A to Z' selection is present
    Then    'Name A to Z' selection is present os 'Sort by' filter

  Scenario: Verify that user can see 'Name A to Z' is first option  in 'Sort by' filter
    Given   User is on Book Category page
    When    User is on BoOk Category Page
    And     Click on 'Sort By' Filter
    And     Check that 'Name A to Z' is in order
    Then    'Name A to Z' selection is first option in order

  Scenario: Verify that user can see 'Name A to Z' is functioning as expected(Note: Products are filtered in alphabetical order)
    Given   User is on Book Category page
    When    User is on BoOk Category Page
    And     Click on 'Sort By' Filter
    And     Select 'Name A to Z' Filter
    Then    All products are displayed in alphabetical order




