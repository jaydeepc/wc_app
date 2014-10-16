require_relative '../../features/pages/home_page'

class AbstractPage
  include Capybara::DSL

  def navigate_to_home_page
    visit '/'
    click_link('Get Started')
    return HomePage.new
  end

end