require 'rubygems'
require 'watir-webdriver'

def adopt_puppy_number(puppy_number)
  @browser.button(:value => 'View Details', :index => puppy_number - 1).click
  @browser.button(:value => 'Adopt Me!').click
end

@browser=Watir::Browser.new
@browser.goto 'http://puppies.herokuapp.com'
adopt_puppy_number 1
@browser.button(:value => 'Complete the Adoption').click
