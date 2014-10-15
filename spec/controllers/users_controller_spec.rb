require "rails_helper"

describe LandingPageController do
  describe 'GET #best' do
    it 'should respond with 200' do
      get :best
      expect(response.status).to eq(200)
    end
  end
end
