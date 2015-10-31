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
            render 'edit'
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
		params.require(:surveyresponse).permit(:procedure_id, :date, :surveytemplate_id)
	end
end