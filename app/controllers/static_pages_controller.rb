class StaticPagesController < ApplicationController
  before_action :authenticate_current_user!, except: [:index]

  def index
  end
end