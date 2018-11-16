Given("I am a {string}") do |string|
    case string
    when 'customer'
        @user = FactoryBot.create :customer
    when 'driver'
        @user = FactoryBot.create :driver
    end
  end
  
  Given("I want to make a booking") do
    @booking = FactoryBot. build :booking
    @booking.user = @user
  end
  
  Given("I am logged in") do
    visit '/users/sign_in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end
  
  When("I visit {string}") do |string|
    visit string
  end
  
  Then("I should see {string} link") do |string|
    expect(page).to have_link string
  end
  
  When("I click {string} link") do |string|
    #save_and_open_page
    find_link(string).click
  end
  
  Then("I should see New Bookings form") do
    expect(page).to have_content "New Booking"
  end
  
  When("I  fill New Bookings form") do
    save_and_open_page
    fill_in 'Queue', with: @booking.queue_id
    fill_in 'User', with: @user.email
    fill_in 'Number of seats', with: @booking.number_of_seats
    fill_in 'Status', with: @booking.status
  end
  
  Then("I should see My Booking") do
    #save_and_open_page
    expect(page).to have_content "Booking"
  end
  
  Given("I want to make a car") do
    @car = FactoryBot. build :car
    @car.user = @user
  end
  

  
  Then("I should see {string} form") do |string|
    expect(page).to have_content "New Car"
  end
  
  When("I fill New Car form") do
    fill_in 'Queue', with: @car.queue_id
    fill_in 'User', with: @user.email
    fill_in 'Available seats', with: @car.available_seats
    fill_in 'Status', with: @car.status
  end
  
  Then("I should see my car") do
    expect(page).to have_content "Car"
  end
  