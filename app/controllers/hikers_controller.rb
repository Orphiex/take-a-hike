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

  private

  def hiker_params
    params.require(:hiker).permit(:name, :email)
  end
end
