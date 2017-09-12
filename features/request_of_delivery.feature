Feature: As GigaFood
  In order to book a delivery
  We need to generate a mail with transportation details when the order has been approved by Gigafood.

  Background:
    Given an admin exists with email "admin@example.com" and password "password"
    And I'm loged in as admin user "admin@example.com"
    And I go to the dashboard
    And the following orders exist:
      | name       | description | price | order_date       | delivery_date    | email                  |
      | Bob Schmob | Bobs order  | 100   | 2017-11-15 10:00 | 2017-11-20 12:00 | bob.schmob@example.com |
      | John Smith | Johns order | 200   | 2017-10-05 11:00 | 2017-10-10 12:00 | john.smith@example.com |
      | Kari Lee   | Karis order | 300   | 2017-10-03 14:00 | 2017-10-08 12:00 | kari.lee@example.com |
