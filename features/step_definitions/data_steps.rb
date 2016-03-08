Given(/^I have data storage$/) do
  temp_storage
end

When(/^I add data as a "([^"]*)" \/ "([^"]*)" pair$/) do |key, value|
  @temp.add(key, value)
end

When(/^I have a file "([^"]*)" with "([^"]*)"$/) do |file_name, contents|
  File.open("data/#{file_name}.txt", 'w'){|f| f.write(contents)}
end

Then(/^I can get data has the "([^"]*)" \/ "([^"]*)" pair$/) do |key, value|
  actual_data = @temp.get(key)
  expect(actual_data).to eq(value)
end

Given(/^I have nothing$/) do
  temp_storage
end

When(/^I request nothing$/) do
  @actual_data = @temp.get('nothing')
end

Then(/^I get nothing$/) do
  expect(@actual_data).to eq('')
end

def temp_storage
  @temp = RestData.new('temp_storage')
end