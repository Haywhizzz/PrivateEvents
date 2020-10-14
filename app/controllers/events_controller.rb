class EventsController < ApplicationController
    before_action :CheckUser
    def new
        @event = Event.new
    end

    def index
        @event = Event.all
    end

    def create
        @event = Event.new(params_event)
        if @event.save
            flash[:notice] = "You have successfully created an event!"
            redirect_to events_path
        else
            flash[:alert] = "Oops, there's an error creating your event!"
            render 'new'
    end
    end

    private

    def params_event
        params.require(:event).permit(:name, :description, :location, :date)
    end
end
