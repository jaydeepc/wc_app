class Recommendation
  include ActiveModel::Model

  attr_accessor :text

  def self.find_by_answers answers
    recommendations = {
      ['Small', 'Few', 'Traditional'] => Recommendation.new(text: 'American Gourmet'),
      ['Small', 'Lots', 'Traditional'] => Recommendation.new(text: 'Classic 2 burner gas'),
      ['Small', 'Few', 'New'] => Recommendation.new(text: 'Patio bistro electric'),
      ['Small', 'Lots', 'New'] => Recommendation.new(text: 'Commercial 2 burner'),
      ['Big', 'Few', 'Traditional'] => Recommendation.new(text: 'Classic 3 burner gas'),
      ['Big', 'Lots', 'Traditional'] => Recommendation.new(text: 'Classic 6 burner'),
      ['Big', 'Few', 'New'] => Recommendation.new(text: 'Performance 3 burner'),
      ['Big', 'Lots', 'New'] => Recommendation.new(text: 'Performance 4 burner')
    }

    recommendations[answers]
  end
end
