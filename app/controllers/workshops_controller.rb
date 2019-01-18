class WorkshopsController < ApplicationController

    def index
        @workshop = Workshop.all
    end

    def new
        @workshop = Workshop.new
    # method: get
    # action: index
    # template: workshops/new.html.erb
    end

    def show
        @workshop = Workshop.find(params[:id])
        #Renders individual workshop
        @question = Question.where(worshop_id: @workshop.id)
        #query database to only find questions that belong to current workshop shown
    end

    def create
        @workshop = Workshop.new(workshop_params)
 
        if @workshop.save
            redirect_to workshops_path
        else
            render 'new'
        end
    end

    private
        def workshop_params
            params.require(:workshop).permit(:name, :facilitator_id)
        end

end
