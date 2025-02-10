Given(/^I click on Got it button$/) do
  puts("Click on Got it button")
  find_element(id:"android:id/button1").click
end

And(/^I see "([^"]*)" in Form header$/) do |value|
  actual_value = find_element(id:"header_text_unit_from").text
  if(actual_value != value)
    fail("Expected '#{value}' but got '#{actual_value}'")
  end
end

And(/^I see "([^"]*)" in To header$/) do |value|
  actual_value = find_element(id:"header_text_unit_to").text
  if(actual_value != value)
    fail("Expected '#{value}' but got '#{actual_value}'")
  end
end

When(/^I click on Swap button$/) do
  puts("Click on Swap button")
  find_element(id:"fab").click
end

Then(/^I see "([^"]*)" in From header$/) do |value|
  actual_value = find_element(id:"header_text_unit_from").text
  if(actual_value != value)
    fail("Expected '#{value}' but got '#{actual_value}'")
  end
end