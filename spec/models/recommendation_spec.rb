require "rails_helper"

describe Recommendation do
  describe '.find_by_answers' do
    def self.it_returns_the_grill_for answers, grill_info
      it "returns #{grill_info} for #{answers.join(',')}" do
        expect(Recommendation.find_by_answers(answers).name).to eql grill_info[:name]
      end
    end

    it_returns_the_grill_for ['Small', 'Few', 'Traditional'], { name: 'American Gourmet' }
    it_returns_the_grill_for ['Small', 'Lots', 'Traditional'], { name: '2 burner gas' }
    it_returns_the_grill_for ['Small', 'Few', 'New'], { name: 'Patio bistro electric' }
    it_returns_the_grill_for ['Small', 'Lots', 'New'], { name: 'Commercial 2 burner' }
    it_returns_the_grill_for ['Big', 'Few', 'Traditional'], { name: 'Classic 3 burner gas' }
    it_returns_the_grill_for ['Big', 'Lots', 'Traditional'], { name: 'Classic 6 burner' }
    it_returns_the_grill_for ['Big', 'Few', 'New'], { name: 'Performance 3 burner' }
    it_returns_the_grill_for ['Big', 'Lots', 'New'], { name: 'Performance 4 burner' }
  end
end
