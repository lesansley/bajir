class SurveyresponsesController < ApplicationController
	 def create
	    @procedure = Procedure.find(params[:procedure_id])
	    @surveyresponse = @procedure.surveyresponses.create(surveyresponse_params)
	    redirect_to procedure_path(@procedure)
	end

	def destroy
	    @procedure = Procedure.find(params[:procedure_id])
	    @surveyresponse = @procedure.surveyresponses.find(params[:id])
	    @surveyresponse.destroy
	    redirect_to procedure_path(@procedure)
	end

	private
	    def surveyresponse_params
	    params.require(:surveyresponse).permit(:username, :date, :score)
	end
end
