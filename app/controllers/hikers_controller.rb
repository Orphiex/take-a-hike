class HikersController < ApplicationController
  before_action :authenticate_current_user!, except: [:index, :show]

  def index
    @hikers = Hiker.all
  end

  def show
    @hiker = Hiker.find_by_id(params[:id])

    if @hiker.nil?
      render json: { message: "Cannot find hiker" }, status: :not_found
    end
  end

  def edit
  end

  def update
    @hiker = Hiker.update(params[:id], hiker_params)

    # if @hiker.nil?
    #   render json: { message: "Cannot find hiker" }, status: :not_found
    # else
    #   Hiker.update(@hikerhiker_params)
    # end
    head :ok, content_type: "text/html"
  end

  private

  def hiker_params
    params.permit(:name, :nickname, :image)
  end
end
