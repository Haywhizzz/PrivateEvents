class RegistrationsController < ApplicationController
    def index
        @event = Event.find(params[:event_id])
        @registrations = @event.registrations
    end

    def new
        @event = Event.find(params[:event_id])
        @registrations = @event.registrations
    end

    def create
         @event = Event.find(params[:event_id])
        @registrations = @event.registrations.new(registration_params)
        if @registration.save
            redirect to event_registrations_url(@event),
            notice: "Thanks for registering!"
        else
            render :new
        end
    end

private

    def registration_params
        params.require(:registration).permit(:name)
    end

end
