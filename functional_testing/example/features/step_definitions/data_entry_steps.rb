When(/^I login with the correct credentials$/) do
  browser.login('Rob', 'password')
end

When(/^I login with incorrect credentials$/) do
  browser.login('Rob', 'wrong')
end