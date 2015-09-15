class SurveyresponsesController < ApplicationController
	def index
		@procedure = Procedure.find(params[:procedure_id])
	    @surveyresponse = @procedure.surveyresponses.all
	end

	def show
	 	@procedure = Procedure.find(params[:procedure_id])
	    @surveyresponse = @procedure.surveyresponses.find(params[:id])
	end

	def new
		@procedure = Procedure.find(params[:procedure_id])
	    @surveyresponse = @procedure.surveyresponses.new
	end

	def edit

	end

	def create
	    @procedure = Procedure.find(params[:procedure_id])
	    @surveyresponse = @procedure.surveyresponses.create(surveyresponse_params)

	    if @surveyresponse.save
			redirect_to procedure_path(@procedure)
		else
			render 'new'
		end
	end

	def update

	end

	def destroy
	    @procedure = Procedure.find(params[:procedure_id])
	    @surveyresponse = @procedure.surveyresponses.find(params[:id])
	    @surveyresponse.destroy
	    redirect_to procedure_path(@procedure)
	end

	private
	    def surveyresponse_params
	    params.require(:surveyresponse).permit(:type, :date)
	end
end
