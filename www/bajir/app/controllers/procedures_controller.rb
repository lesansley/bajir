class ProceduresController < ApplicationController

	def index
    	@procedures = Procedure.all
  	end

	def show
    	@procedure = Procedure.find(params[:id])
  	end

    def new
    	@procedure = Procedure.new
      @operations = Operation.all
    end

	def edit
  		@procedure = Procedure.find(params[:id])
      @operations = Operation.all
	end

    def create
    	@procedure = Procedure.new(procedure_params)
    	if @procedure.save
    		redirect_to procedures_path
    	else
    		render 'new'
    	end
    end

    def update
  		@procedure = Procedure.find(params[:id])

  		if @procedure.update(procedure_params)
    		redirect_to procedures_path
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@procedure = Procedure.find(params[:id])
  		@procedure.destroy

  		redirect_to procedures_path
	end

private
	def procedure_params
		params.require(:procedure).permit(:tnumber, :procedureDate, :operation_id)
	end

end
