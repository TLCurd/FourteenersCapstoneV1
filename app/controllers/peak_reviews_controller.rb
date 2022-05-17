class PeakReviewsController < ApplicationController

  def index
    @peak_reviews = PeakReview.all
    render template: "peak_reviews/index"
  end
  
  def create
    # peak = Peak.find_by(id: params[:id])
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
    
  def update
    peak_review = PeakReview.find(params[:id])
    peak_review.peak_id = peak_review.peak_id
    peak_review.review = params[:review] || peak_review.review
    if peak_review.save!
      render json: {message: "Your review has been updated.", edited_review: peak_review.as_json}
    else
      render json: {message: peak_review.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    peak_review = PeakReview.find_by(id: params[:id])
    if peak_review.destroy
      render json: {message: "Your review has been deleted."}
    else
      render json: {error: peak_review.errors.full_messages}
    end
  end

end
