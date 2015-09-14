class Surveyresponse < ActiveRecord::Base
  belongs_to :procedure
  has_many :answers
end
