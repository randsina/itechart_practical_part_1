require_relative '../test_helper.rb'

Given(/^user visits the sign up page$/) do
  visit '/join'
end

When(/^he submits the registration info$/) do
  click_on 'Create an account'
end

Then(/^he should see message: "(.*?)"$/) do |arg1|
  expect(page).to have_content arg1
end

When(/^he enters valid sign up information$/) do
  id = (0..9).to_a.shuffle.join

  fill_in 'Username', with: "user#{id}"
  fill_in 'Email Address', with: "user#{id}@bazinga.com"
  fill_in 'Password', with: "#{id}qwerty"
  fill_in 'Confirm your password', with: "#{id}qwerty"
end

When(/^he submits the finish registration info$/) do
  click_on 'Finish sign up'
  save_page
end
