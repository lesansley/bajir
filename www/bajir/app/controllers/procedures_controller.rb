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

	def edit
  		@procedure = Procedure.find(params[:id])
	end

    def create
    	@procedure = Procedure.new(procedure_params)
    	if @procedure.save
    		redirect_to @procedure
    	else
    		render 'new'
    	end
    end

    def update
  		@procedure = Procedure.find(params[:id])
 
  		if @procedure.update(procedure_params)
    		redirect_to @procedure
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@procedure = Article.find(params[:id])
  		@procedure.destroy
 
  		redirect_to procedures_path
	end

private
	def procedure_params
		params.require(:procedure).permit(:tnumber, :procedureDate)
	end

end
