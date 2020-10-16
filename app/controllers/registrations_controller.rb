class RegistrationsController < ApplicationController
    def index
        @registrations = Registration.all
    end
end
