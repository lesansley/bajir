class QuestionsController < ApplicationController
    def create
		@surveytemplate = Surveytemplate.find(params[:surveytemplate_id])
		@question = @surveytemplate.questions.create(question_params)
		redirect_to edit_surveytemplate_path(@surveytemplate)
	end

  def destroy
    @surveytemplate = Surveytemplate.find(params[:surveytemplate_id])
    @question = @surveytemplate.questions.find(params[:id])
    @question.destroy
    redirect_to surveytemplate_path(@surveytemplate)
  end

	private
	def question_params
		params.require(:question).permit(:question, :answerParameters)

	end
end
