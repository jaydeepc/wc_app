require "rails_helper"

describe RecommendationsController do
  describe 'POST #create' do
    before do
      allow(Recommendation).to receive(:find_by_answers).and_return(Recommendation.new(name: 'Grill', img: 'american-gourmet.jpg'))
    end

    it 'finds a recommendation for the answers in the params' do
      post :create, answers: ['a', 'b']

      expect(Recommendation).to have_received(:find_by_answers).with(['a', 'b'])
    end

    it 'renders a recommendation as JSON' do
      post :create, answers: []

      recommendation = JSON.parse(response.body)
      expect(recommendation["name"]).to eq('Grill')
      expect(recommendation["img"]).to eq('/assets/american-gourmet.jpg')
    end
  end
end
