class RecAreaReviewsController < ApplicationController

  def index
    @rec_area_reviews = RecAreaReview.all
    render template: "rec_area_reviews/index"
  end

  def create
    rec_area_review = RecAreaReview.new(
      user_id: current_user.id,
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

  def update
    rec_area_review = RecAreaReview.find(params[:id])
    rec_area_review.rec_area_id = rec_area_review.rec_area_id
    rec_area_review.review = params[:review] || rec_area_review.review
    if rec_area_review.save!
      render json: {message: "Your review has been updated."}
    else
      render json: {message: rec_area_review.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    rec_area_review = RecAreaReview.find_by(id: params[:id])
    if rec_area_review.destroy
      render json: {message: "Your review has been deleted."}
    else
      render json: {error: rec_area_review.errors.full_messages}
    end
  end

end
