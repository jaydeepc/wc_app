require 'rails_helper'

describe 'submitting email address' do
  it 'return the submitted email address' do
    visit '/sign_up'
    within '#email' do
      fill_in :user_email, with: 'whatever@google.com'
    end
    click_button 'submit email'
    expect(page).to have_content 'Thanks'
  end
end