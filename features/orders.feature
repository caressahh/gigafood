Feature: List orders
  As Giga-Food
  In order to make a decision to start an order
  I like to have three options approve, cancel and a input filed with transport size

  Background:
    Given an admin exists with email "admin@example.com" and password "password"
    And I'm loged in as admin user "admin@example.com"
    #And an user exists with email "user@example.com"
    Given I go to the dashboard
    And the following orders exist:
    | name       | description | price | order_date       | delivery_date    | email                  |
    | Bob Schmob | Bobs order  | 100   | 2017-11-15 10:00 | 2017-11-20 12:00 | bob.schmob@example.com |
    | John Smith | Johns order | 200   | 2017-10-05 11:00 | 2017-10-10 12:00 | john.smith@example.com |
    | Kari Lee   | Karis order | 300   | 2017-10-03 14:00 | 2017-10-08 12:00 | kari.lee@example.com |

  Scenario: View a list of orders
    When I press "Orders"
    Then I should see "Bob Schmob"
    And I press "View" for order "Bob Schmob"
    Then I should see "Confirm Order"
    And I should see "Cancel Order"
    Then I press "Confirm Order"
    And I should see "Confirmed!"
    Then I press "Cancel Order"
    And I should see "Canceled!"

  Scenario: Send order confirmation
    When I press "Orders"
    And I press "View" for order "Bob Schmob"
    When I press "Confirm Order"
    Then "bob.schmob@example.com" should receive an email
    And "bob.schmob@example.com" should see "Confirmation from Gigafood" in the subject
    And "bob.schmob@example.com" should see "Thank you for choosing Gigafood.se, Bob Schmob" in the email
