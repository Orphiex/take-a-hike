class TrailsController < ApplicationController
before_action :authenticate_current_user!, except: [:index, :show]

  def index
    @region = params[:region]
    @trails = Trail.where(region: @region) # => {region: "Island"}
  end

  def details
    @id = params[:id]
    @trail = Trail.find(id: @id)
  end

  def new
  end

  def show
    @trail = Trail.find_by_id(params[:id])

    if @trail.nil?
      render json: { message: "Cannot find trail" }, status: :not_found
    end
  end

  def edit
  end

  def update
    @trail = Trail.find_by_id(params[:id])

    if @trail.nil?
      render json: { message: "Cannot find trail" }, status: :not_found
    else
      @trail.update(trail_params)
    end
  end

  def regions
  end

  def show_region_trails
    @trail = Trail.find_by_id(params[:region])

    if @trail.nil?
    end
  end

  def trails_by_region
  end

  private

  def region_params
    params.permit(:region) # => {region: "Island"}
  end

  def trail_params
    params.require(:trail).permit(:denis) # => {denis: "asdfasd"}
  end

end

