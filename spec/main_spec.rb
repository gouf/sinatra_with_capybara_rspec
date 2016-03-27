# require 'cpaybara/rails'
# require 'capybara/cucumber'
require 'capybara'
require_relative '../lib/main.rb'
Capybara.app = MyApp
# Capybara.default_driver = :selenium
Capybara.app_host = 'http://localhost:3000'

describe 'Show Top Page', type: :feature do
  it 'test' do
    visit 'index.html'
    expect(page).to have_content 'click'
    expect(page).to have_field 'input'
  end
end
