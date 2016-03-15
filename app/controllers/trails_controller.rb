class TrailsController < ApplicationController
before_action :authenticate_current_user!, except: [:index, :show]

  def index
    @region = params[:region]
    @trails = Trail.where(region: @region) # => {region: "Island"}
  end

  def details
    # @id = params[:id]
    @trail = Trail.find_by_id(params[:id])
  end

  # def show
  #   @trail = Trail.find_by(params[:trail_name])

  #   if @trail.nil?
  #     render json: { message: "Cannot find trail" }, status: :not_found
  #   end
  # end

  def regions
  end

  def show_region_trails
    @trail = Trail.find_by_id(params[:region])

    if @trail.nil?
    end
  end

  def group_by_regions
    @trails = Trail.all.group_by{|t| t.region}
    render json: @trails
  end

  private

  def region_params
    params.permit(:region) # => {region: "Island"}
  end

  def trail_params
    params.require(:trail).permit(:trail_name, :region, :descriptions, :pt1_name, :pt1_info, :pt2_name, :pt2_info, :max_height, :difficulty, :pt1_transp, :pt2_transp, :pt1_photo, :pt2_photo, :map_link, :distance, :est_time) # => {denis: "asdfasd"}
  end

end

