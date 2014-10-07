require "rails_helper"

describe UsersController do
  describe 'GET #index' do
    it 'should respond with 200' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
