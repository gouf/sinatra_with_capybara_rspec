Capybara.app = MyApp
# Capybara.default_driver = :selenium
Capybara.default_driver = :poltergeist
Capybara.app_host = 'http://localhost:3000'

describe 'Show Top Page' do
  it 'test' do
    visit 'index.html'
    file_path = File.expand_path('./screenshot.jpg')
    script = %(document.body.style.backgroundColor = "white")
    page.execute_script(script)
    save_screenshot(file_path, full: true)
    expect(page).to have_content 'click'
    expect(page.find(:css, 'form > input')).to be_truthy
  end
end
