class TrailsController < ApplicationController
before_action :authenticate_current_user!, except: [:index, :show]

  def index
    @trails = Trail.all
  end

  def new
  end

  def show
    @trail = Trail.find_by_id(params[:id])

    if @trail.nil?
      render json: { message: "Cannot find post" }, status: :not_found
    end
  end

  def edit
  end

  def update
    @trail = Trail.find_by_id(params[:id])

    if @trail.nil?
      render json: { message: "Cannot find post" }, status: :not_found
    else
      @trail.update(post_params)
    end
  end


  private

  def post_params
    params.require(:trail).permit()
  end

end

