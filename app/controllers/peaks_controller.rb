class PeaksController < ApplicationController
  def show
    peak = Peak.find_by(id: params[:id])
    render json: peak.as_json
  end
end
