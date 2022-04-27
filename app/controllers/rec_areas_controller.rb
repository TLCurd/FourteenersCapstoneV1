class RecAreasController < ApplicationController
  def index
    @rec_areas = RecArea.all
    render template: "rec_areas/index"
  end

  def show
    @rec_area = RecArea.find_by(id: params[:id])
    render template: "rec_areas/show"
  end
end
