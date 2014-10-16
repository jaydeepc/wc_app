class RecommendationsController < ApplicationController
  def create
    @recommendation = Recommendation.find_by_answers(params[:answers])
    render json: {
      name: @recommendation.name,
      price: @recommendation.price,
      link: @recommendation.link,
      img: ActionController::Base.helpers.asset_path(@recommendation.img) }
  end
end
