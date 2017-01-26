Given(/^I go to the index screen$/) do
  visit "http://localhost:3000"
end

Then("I should see $cont") do |cont|
page.has_content? ('cont')
end

When(/^I click the PRODUCTS link$/) do
  click_on "PRODUCTS"
end

When (/^I wait for (\d+) seconds?$/) do |secs|
  sleep secs.to_i
end

When(/^I click on the product$/) do
	find("#chair").click
end