class JavascriptsController < ApplicationController
    def dynamic_procedures
        @procedure = Procedure.find(:all)
    end
end
