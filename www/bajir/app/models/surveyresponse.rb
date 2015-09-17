class Surveyresponse < ActiveRecord::Base
  belongs_to :procedure
  belongs_to :surveytemplate
end
