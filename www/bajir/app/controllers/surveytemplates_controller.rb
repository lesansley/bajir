class SurveytemplatesController < ApplicationController
    def index
        @surveytemplates = Surveytemplate.all
    end

    def show
        @surveytemplate = Surveytemplate.find(params[:id])
    end

    def new
        @surveytemplate = Surveytemplate.new
    end

    def edit
        @surveytemplate = Surveytemplate.find(params[:id])
    end

    def create
        @surveytemplate = Surveytemplate.new(surveytemplate_params)
        if @surveytemplate.save
            render 'edit'
        else
            render 'new'
        end
    end

    def update
        @surveytemplate = Surveytemplate.find(params[:id])

        if @surveytemplate.update(surveytemplate_params)
            redirect_to @surveytemplate
        else
            render 'edit'
        end
    end

    def destroy
        @surveytemplate = Surveytemplate.find(params[:id])
        @surveytemplate.destroy

        redirect_to surveytemplates_path
    end

private
    def surveytemplate_params
        params.require(:surveytemplate).permit(:name, :description)
    end

end
