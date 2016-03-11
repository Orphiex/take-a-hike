class HikesController < ApplicationController
  before_action :authenticate_current_user!, except: [:index, :show]

  def index
    @hikes = Hike.all
  end

  def new
  end

  def create
    @hike = current_user.hikes.new(post_params)

    if @hike.save
      # render success in jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def show
    @hike = Hike.find_by_id(params[:id])

    if @hike.nil?
      render json: { message: "Cannot find post" }, status: :not_found
    end
  end

  def edit
  end

  def update
    @hike = Hike.find_by_id(params[:id])

    if @hike.nil?
      render json: { message: "Cannot find post" }, status: :not_found
    else
      @hike.update(post_params)
    end
  end

  def destroy
    @post = Post.find_by_id(params[:id])

    if @post.nil?
      render json: { message: "Cannot find post" }, status: :not_found
    else
      if @post.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request
      end
    end
  end

  private

  def post_params
    params.require(:hike).permit()
  end

end
