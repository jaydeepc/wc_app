class RecommendationsController < ApplicationController
  def create
    render json: Recommendation.new(name: 'Raz')
  end
end
