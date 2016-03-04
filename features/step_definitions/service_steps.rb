
Given(/^I have a rest service$/) do
  #do nothing?
end

When(/^I request a GET for "([^"]*)" from "([^"]*)"$/) do |content, path|
  post(path, content)
end

When(/^I send a GET to "([^"]*)"$/) do |path|
  get(path)
end

Then(/^I receive "([^"]*)"$/) do |content|
  expect(content).to eq(last_response.body)
end
