require_relative '../../features/pages/abstract_page'

class HomePage < AbstractPage

  def input_user_email email
    fill_in 'user[email]', with: email
    return HomePage.new
  end

  def click_submit_email_button
    click_button('submit email')
    return HomePage.new
  end

end