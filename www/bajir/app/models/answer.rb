class Answer < ActiveRecord::Base
    belongs_to :surveyresponse
    belongs_to :question
end
