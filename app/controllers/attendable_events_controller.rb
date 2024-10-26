class AttendableEventsController < ApplicationController
  def new
    @attendable_event = AttendableEvent.new
  end

  def create
    @attendable_event = AttendableEvent.new

    @attendable_event.attendee = User.find(current_user.id)  # Assuming current_user is already set by Devise
  @attendable_event.event = Event.find(params[:attendable_event][:attended_event])# Ensure this matches the key

    if @attendable_event.save
      redirect_to events_path, notice: 'Successfully joined the event!'
    else
      render :new, alert: 'Unable to join the event.'
    end
  end

  private

  def get_params
    params.require(:attendable_event).permit(:attendee, :attended_event)
  end
end
