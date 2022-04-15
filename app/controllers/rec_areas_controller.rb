class RecAreasController < ApplicationController
  def index
    rec_areas = RecArea.all
    render json: rec_areas.as_json
  end
end
