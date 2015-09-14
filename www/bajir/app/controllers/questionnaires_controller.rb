class QuestionnairesController < ApplicationController
    def create
        @procedure = Procedure.find(params[:procedure_id])
        @questionnaire = @procedure.questionnaires.create(questionnaire_params)
        redirect_to procedure_path(@procedure)
    end

    def destroy
        @procedure = Procedure.find(params[:procedure_id])
        @questionnaire = @procedure.questionnaires.find(params[:id])
        @questionnaire.destroy
        redirect_to procedure_path(@procedure)
    end

    private
        def questionnaire_params
        params.require(:questionnaire).permit(:username, :date, :score)
    end
end
s