class ProceduresController < ApplicationController
    def new
    end

    def create
    	@procedure = Procedure.new(params.require(:procedure).permit(:tnumber, :procedureDate))
    	@procedure.save
    	redirect_to @procedure    
    end
end
