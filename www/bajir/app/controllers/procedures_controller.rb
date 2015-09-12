class ProceduresController < ApplicationController
	
	def index
    	@procedures = Procedure.all
  	end

	def show
    	@procedure = Procedure.find(params[:id])
  	end

    def new
    	@procedure = Procedure.new
    end

    def create
    	@procedure = Procedure.new(procedure_params)
    	if @procedure.save
    		redirect_to @procedure
    	else
    		render 'new'
    	end
    end

private
	def procedure_params
		params.require(:procedure).permit(:tnumber, :procedureDate)
	end

end
