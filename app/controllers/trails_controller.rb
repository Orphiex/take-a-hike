class TrailsController < ApplicationController
  def regions
  end

  def show_region_trails
    @trail = Trail.find_by_id(params[:region])

    if @trail.nil?
    end
  end
end
