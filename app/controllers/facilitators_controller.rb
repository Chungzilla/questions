class FacilitatorsController < ApplicationController
    def index
        @facilitator = Facilitator.all
    end

    def new
        @facilitator = Facilitator.new
    # method: get
    # action: index
    # template: Facilitators/new.html.erb
    end

    def create
        @facilitator = Facilitator.new(facilitator_params)
 
        if @facilitator.save
            redirect_to facilitators_path
        else
            render 'new'
        end
    end

    private
        def facilitator_params
            params.require(:facilitator).permit(:first_name)
        end
end
