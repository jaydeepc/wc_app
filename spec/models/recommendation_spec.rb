require "rails_helper"

describe Recommendation do
  describe '.find_by_answers' do
    before do
      allow(Recommendation).to receive(:all).and_return({
        ['Small', 'Few'] => Recommendation.new(name: 'Grill 1'),
        ['Big', 'Few'] => Recommendation.new(name: 'Grill 2')
      })
    end

    it 'returns the first grill matching the answers provided' do
      recommendation = Recommendation.find_by_answers(['Small', 'Few'])
      expect(recommendation.name).to eql 'Grill 1'

      recommendation = Recommendation.find_by_answers(['Big', 'Few'])
      expect(recommendation.name).to eql 'Grill 2'
    end
  end
end
