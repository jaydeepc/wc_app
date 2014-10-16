require "rails_helper"

describe QuestionsController do
  describe 'GET #index' do
    it 'should assign questions' do
      get :index
      expect(assigns(:questions)).not_to be_empty
    end
  end
end
