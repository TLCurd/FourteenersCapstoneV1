class RecAreaReviewsController < ApplicationController

  def index
    @rec_area_reviews = RecAreaReview.all
    render template: "rec_area_reviews/index"
  end

  def create
    rec_area_review = RecAreaReview.new(
      user_id: current_user.id,
      user_name: current_user.name,
      user_email: current_user.email,
      rec_area_id: params[:rec_area_id],
      review: params[:review]
    )
    if rec_area_review.save!
      render json: {message: "Your review has been saved!", review: rec_area_review}
    else
      render json: {errors: rec_area_review.errors.full_messages}
    end
  end

  def show
    @rec_area_review = RecAreaReview.find(params[:id])
    render template: "rec_area_reviews/show"
  end

end
