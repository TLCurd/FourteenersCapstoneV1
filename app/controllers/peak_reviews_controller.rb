class PeakReviewsController < ApplicationController

  def index
    @peak_reviews = PeakReview.all
    render template: "peak_reviews/index"
  end
  
  def create
    peak_review = PeakReview.new(
      user_id: current_user.id,
      peak_id: params[:peak_id],
      review: params[:review]
    )
    if peak_review.save
      render json: {message: "Your review has been saved", peak_review: peak_review}
    else
      render json: {errors: peak_review.errors.full_messages}
    end
  end
  
  def show
    @peak_review = PeakReview.find_by(id: params[:id])
    render template: "peak_reviews/show"
  end
    

end
