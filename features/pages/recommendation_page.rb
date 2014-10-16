class RecommendationPage

  def initialize
  end

  def get_recommendation
    recommendation = find('.recommendation h2').text
    return recommendation
  end
end