class Surveytemplate < ActiveRecord::Base
	has_and_belongs_to_many :operations
    has_many :questions, dependent: :destroy
    has_many :surveyresponses
end
