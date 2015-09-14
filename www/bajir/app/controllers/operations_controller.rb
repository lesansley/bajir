class OperationsController < ApplicationController

    def index
        @operations = Operation.all
    end

    def show
        @operation = Operation.find(params[:id])
    end

    def new
        @operation = Operation.new
    end

    def edit
        @operation = Operation.find(params[:id])
    end

    def create
        @operation = Operation.new(operation_params)
        if @operation.save
            redirect_to @operation
        else
            render 'new'
        end
    end

    def update
        @operation = Operation.find(params[:id])

        if @operation.update(operation_params)
            redirect_to @operation
        else
            render 'edit'
        end
    end

    def destroy
        @operation = Operation.find(params[:id])
        @operation.destroy

        redirect_to operation_path
    end

private
    def operation_params
        params.require(:operation).permit(:code, :description)
    end

end
