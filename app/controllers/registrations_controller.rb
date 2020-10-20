class RegistrationsController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @registrations = Registration.all
  end

  def new
    @event = Event.find(params[:event_id])
    @registrations = @event.registrations
  end

  def create
    @event = Event.find(params[:format])
    @user = current_user
    @registration = Registration.new(attendee_id: @user.id, attended_event_id: @event.id)

    if @registration.save
      flash[:notice] = 'Event was created successfully'
      redirect_to events_path
    else
      flash[:alert] = 'Woops something went wrong'
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:name)
  end
end
