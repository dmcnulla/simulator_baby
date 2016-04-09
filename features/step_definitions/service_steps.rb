
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
  expect(last_response.body).to eq(content)
end

Given(/^I have a GET for "([^"]*)" from "([^"]*)"$/) do |content, path|
  post(path, content)
end

When(/^I request to DELETE the response for "([^"]*)"$/) do |path|
  delete(path)
end
