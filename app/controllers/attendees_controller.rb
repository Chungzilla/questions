class AttendeesController < ApplicationController
    def index
        @attendee = Attendee.all
    end

    def new
        @attendee = Attendee.new
    # method: get
    # action: index
    # template: attendeess/new.html.erb
    end

    def create
        @attendee = Attendee.new(attendee_params)
 
        if @attendee.save
            redirect_to attendees_path
        else
            render 'new'
        end
    end

    private
        def attendee_params
            params.require(:attendee).permit(:first_name)
        end
 
end
