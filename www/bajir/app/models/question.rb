class Question < ActiveRecord::Base
  belongs_to :surveytemplate
  has_many :answers
end
