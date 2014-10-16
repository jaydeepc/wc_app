class HomePage

  def initialize

  end

  def navigate_to_home_page
    visit '/'
    click_link('Get Started')
    return HomePage.new
  end

  def input_user_email email
    fill_in 'user[email]', with: email
    return HomePage.new
  end

  def click_submit_email_button
    find("#email input[value='submit email']").trigger('click')
    return HomePage.new
  end

end