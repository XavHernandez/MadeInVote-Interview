require "rails_helper"

describe 'Redirection Process', type: :feature do
 it 'Create a new short_url' do
  visit '/'
  fill_in 'Long url', with: 'https://www.microverse.org/blog/understanding-rspec-controller-request-specs-integration-test-using-capybara'
  click_button 'Create Link'
  #expect(current_path).to eq(link_path)
  expect(page).to have_text('Your finalized Link')
  click_link(href: 'https://www.microverse.org/blog/understanding-rspec-controller-request-specs-integration-test-using-capybara')
  expect(page).to have_text('Integration Tests Using Capybara')
 end
end
