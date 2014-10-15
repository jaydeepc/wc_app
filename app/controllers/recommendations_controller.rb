class RecommendationsController < ApplicationController
  def create
    render json: Recommendation.new(text: 'Raz')
  end
end
