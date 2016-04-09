Capybara.app = MyApp
# Capybara.default_driver = :selenium
Capybara.default_driver = :poltergeist
Capybara.app_host = 'http://localhost:3000'

describe 'Show Top Page' do
  it 'test' do
    visit 'index.html'
    file_path = File.expand_path('./screenshot.jpg')
    save_screenshot(file_path, full: true)
    expect(page).to have_content 'click'
    expect(page).to have_css('form > input')
  end
end
