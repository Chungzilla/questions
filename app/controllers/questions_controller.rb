class QuestionsController < ApplicationController
    def index
        @question = Question.all
    end

    def new
        @question = Question.new
    # method: get
    # action: index
    # template: questions/neq.html.erb
    end

    def create
        @question = Question.new(question_params)
 
        if @question.save
            redirect_to questions_path
        else
            render 'new'
        end
    end

    private
        def question_params
            params.require(:question).permit(:query, :attendee_id, :workshop_id)
        end
end
