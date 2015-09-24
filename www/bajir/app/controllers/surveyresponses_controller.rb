class SurveyresponsesController < ApplicationController
	def new
		@surveyresponse = Surveyresponse.new
	end

	def edit
  		@surveyresponse = @procedure.surveyresponses.find(params[:id])

	end

	def create
		@surveyresponse = Surveyresponse.new(surveyresponse_params)
		if @surveyresponse.save
            redirect_to surveyresponses_path
        else
            render 'new'
        end
	end

	def destroy
    @surveyresponse = @procedure.surveyresponses.find(params[:id])
    @surveyresponse.destroy
    redirect_to surveyresponse_path(@surveyresponse)
  end

	private
		def surveyresponse_params
		params.require(:surveyresponse).permit(:date, :survey)
	end
end