class QuestionsController < ApplicationController
    def index
        @question = Question.all
    end

    def new
        @workshop = Workshop.find(params[:workshop_id])
        @question = Question.new
        
    # method: get
    # action: index
    # template: questions/neq.html.erb
    end

    def create
        @workshop = Workshop.find(params[:workshop_id])
        @question = @workshop.questions.create(question_params)
 
      
        if @question.save
            redirect_to new_workshop_question_path(@workshop)
        else
            render 'new'
        end
    end

    private
        def question_params
            params.require(:question).permit(:query, :workshop_id)
        end
end
