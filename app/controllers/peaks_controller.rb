class PeaksController < ApplicationController
  before_action :authenticate_user
  def index
    @peaks = Peak.all.order(:name)
    render template: "peaks/index"
  end

  def create
    peak = Peak.new(name: params[:name], range: params[:range], elevation: params[:elevation], official_14er: params[:official_14er], prominence: params[:prominence], isolation: params[:isolation], lat: params[:lat], long: params[:long], route: params[:route], distance: params[:distance], elevation_gain: params[:elevation_gain], difficulty: params[:difficulty], traffic_low: params[:traffic_low], traffic_high: params[:traffic_high], photo: params[:photo])
    if peak.save
      render json: {message: "The peak was added to the list!", peak: peak}
    else
      render json: {errors: peak.errors.full_messages}
    end
  end

  def show
    @peak = Peak.find_by(id: params[:id])
    render template: "peaks/show"
  end

  def update
    peak = Peak.find_by(id: params[:id])
    if peak.update(name: params[:name] || peak.name, range: params[:range] || peak.range, elevation: params[:elevation] || peak.elevation, official_14er: params[:official_14er] || peak.official_14er, prominence: params[:prominence] || peak.prominence, isolation: params[:isolation] || peak.isolation, lat: params[:lat] || peak.lat, long: params[:long] || peak.long, route: params[:route] || peak.route, distance: params[:distance] || peak.distance, elevation_gain: params[:elevation_gain] || peak.elevation_gain, difficulty: params[:difficulty] || peak.difficulty, traffic_low: params[:traffic_low] || peak.traffic_low, traffic_high: params[:traffic_high] || peak.traffic_high, photo: params[:photo] || peak.photo)
      render json: peak.as_json
    else
      render json: {errors: peak.errors.full_messages}
    end
  end

  def destroy
    peak = Peak.find_by(id: params[:id])
    if peak.destroy
      render json: {message: "The peak has been removed from the database."}
    end
  end
end
