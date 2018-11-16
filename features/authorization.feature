Feature: To check correct authorization
    Scenario: A customer should be able to create a new booking
        Given I am a "customer"
        And I want to make a booking
        And I am logged in
        When I visit "/bookings"
        Then I should see "New Booking" link
        When I click "New Booking" link
        Then I should see New Bookings form
        When I  fill New Bookings form
        Then I should see My Booking

    Scenario: A driver should be able to create a new create
        Given I am a "driver"
        And I want to make a car
        And I am logged in
        When I visit "/cars"
        Then I should see "New Car" link
        When I click "New Car" link
        Then I should see "New Car" form
        When I fill New Car form
        Then I should see my car