class ProceduresController < ApplicationController
	
	def index
    	@procedures = Procedure.all
  	end

	def show
    	@procedure = Procedure.find(params[:id])
  	end

    def new
    end

    def create
    	@procedure = Procedure.new(params.require(:procedure).permit(:tnumber, :procedureDate))
    	@procedure.save
    	redirect_to @procedure    
    end


end
