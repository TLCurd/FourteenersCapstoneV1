class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    render template: "activities/index"
  end

  def show
    @activity = Activity.find_by(id: params[:id])
    render template: "activities/show"
  end
end
