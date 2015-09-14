class QuestionlistController < ApplicationController
	
	def create
    	@surveytemplate = Surveytemplate.find(params[:surveytemplate_id])
    	@questionlist = @surveytemplate.questionlist.create(questionlist_params)
    	redirect_to article_path(@surveytemplate)
  	end

   	def destroy
	    @surveytemplate = Surveytemplate.find(params[:surveytemplate_id])
	    @questionlist = @surveytemplate.questionlist.find(params[:id])
	    @questionlist.destroy
	    redirect_to article_path(@surveytemplate)
  	end

  	private
    	def questionlist_params
      	
    end
    
end
