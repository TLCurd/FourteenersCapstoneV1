class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    render template: "activities/index"
  end
end
