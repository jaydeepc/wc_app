class RecommendationsController < ApplicationController
  def create
    render json: Recommendation.find_by_answers(params[:answers])
  end
end
