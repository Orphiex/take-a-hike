class HikesController < ApplicationController
  before_action :authenticate_current_user!, except: [:index, :show]

  def index
    @hikes = Hike.all
  end

  def new
    @hike = Hike.new
  end

  def create
    hike = Hike.new(hike_params)
    hiker = @current_user
    hiker.hikes << hike
    hiker.save

    redirect_to main_path
  end

  def show
    @hike = Hike.find_by_id(params[:id])

    if @hike.nil?
      render json: { message: "Cannot find hike" }, status: :not_found
    end
  end

  def edit
  end

  def region_trails
  end

  def update
    @hike = Hike.find_by_id(params[:id])

    if @hike.nil?
      render json: { message: "Cannot find hike" }, status: :not_found
    else
      @hike.update(hike_params)
    end
  end

  def destroy
    @hike = hike.find_by_id(params[:id])

    if @hike.nil?
      render json: { message: "Cannot find hike" }, status: :not_found
    else
      if @hike.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request
      end
    end
  end

  private

  def hike_params
    params.require(:hike).permit(:hike_name, :date, :start_time, :meet_instructions, :start_point, :end_point, :hike_distance, :hike_time)
  end

end
