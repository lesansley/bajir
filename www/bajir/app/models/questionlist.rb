class Questionlist < ActiveRecord::Base
	belongs_to :surveytemplate
	has_many :questions, dependent: :destroy
end
