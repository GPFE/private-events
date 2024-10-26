class UsersController < ApplicationController
  def index
    @namename = User.name
    @events = User.own_events
  end

  def show
    @user = User.find(params[:id])
  end
end
