Feature: Request of transportation mail
  As GigaFood
  In order to book a delivery
  We need to generate a mail with transportation details when the order has been approved by Gigafood.

  Background:
    Given an admin exists with email "admin@example.com" and password "password"
    And I'm loged in as admin user "admin@example.com"
    And I go to the dashboard
    And the following orders exist:
      | billing_name |  created_at      | delivery_date    | email                  |
      | Bob Schmob   | 2017-11-15 10:00 | 2017-11-20 12:00 | bob.schmob@example.com |
      | John Smith   | 2017-10-05 11:00 | 2017-10-10 12:00 | john.smith@example.com |
      | Kari Lee     | 2017-10-03 14:00 | 2017-10-08 12:00 | kari.lee@example.com   |

    #And "Bob Schmob" has selected "Delivery" button on the "Confirmation page"


  Scenario: Send request mail to delivery company
      When I click on "Orders"
      And I press "Edit" for order "Bob Schmob"
      And I fill in "order_boxes" with "15"
      And I click on "Update"
      Then I should see "Order was successfully updated"
      When I click on "Confirm Order"
      And "boka@movebybike.se" should receive an email
      And "boka@movebybike.se" should see "Request for delivery from Gigafood" in the subject
      And "boka@movebybike.se" should see "Request for delivery according to the following: " in the email
      And "boka@movebybike.se" should see "delivery_date" with "2017-11-20" in the email
      And "boka@movebybike.se" should see "delivery_time" with "12:00" in the email
      And "boka@movebybike.se" should see "Number of boxes" with "15" in the email
      And "boka@movebybike.se" should see "delivery_name" with "Hungry corp Inc" in the email
      And "boka@movebybike.se" should see "delivery_address" with "Street 42" in the email
      And "boka@movebybike.se" should see "delivery_postal_code" with "123 45" in the email
      And "boka@movebybike.se" should see "delivery_city" with "Town" in the email
      And "boka@movebybike.se" should see "delivery_floor" with "3" in the email
      And "boka@movebybike.se" should see "delivery_door_code" with "1111" in the email
      And "boka@movebybike.se" should see "delivery_contact_name" with "John Doe" in the email
      And "boka@movebybike.se" should see "delivery_phone_number" with "555 123 45 67" in the email
