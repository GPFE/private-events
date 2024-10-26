class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    # @event = Event.new(get_params)
    # # @event.build_creator(current_user)
    # @event.build_creator(get_params)
    @event = current_user.events.build(get_params)

    if @event.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def get_params
    params.require(:event).permit(:title, :content, :date)
  end
end
