require "rails_helper"

describe Recommendation do
  describe '.find_by_answers' do
    def self.it_returns_the_grill_for answers, grill_name
      it "returns #{grill_name} for #{answers.join(',')}" do
        expect(Recommendation.find_by_answers(answers).text).to eql grill_name
      end
    end

    it_returns_the_grill_for ['Small', 'Few', 'Traditional'], 'American Gourmet'
    it_returns_the_grill_for ['Small', 'Lots', 'Traditional'], 'Classic 2 burner gas'
    it_returns_the_grill_for ['Small', 'Few', 'New'], 'Patio bistro electric'
    it_returns_the_grill_for ['Small', 'Lots', 'New'], 'Commercial 2 burner'
    it_returns_the_grill_for ['Big', 'Few', 'Traditional'], 'Classic 3 burner gas'
    it_returns_the_grill_for ['Big', 'Lots', 'Traditional'], 'Classic 6 burner'
    it_returns_the_grill_for ['Big', 'Few', 'New'], 'Performance 3 burner'
    it_returns_the_grill_for ['Big', 'Lots', 'New'], 'Performance 4 burner'
  end
end
