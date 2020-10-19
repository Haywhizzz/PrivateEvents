# frozen_string_literal: true

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
    # user = User.find(session[:user_id])
    # @registration = user.attended_events.build(params[:format])
    @user = current_user
    @registration = Registration.new(attendee_id: @user.id, attended_event_id: @event.id)
    # @registrations = @event.registrations.new(registration_params)
    if @registration.save
      redirect_to root_path

    else
      redirect_to root_path
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:name)
  end
end
