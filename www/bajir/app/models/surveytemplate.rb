class Surveytemplate < ActiveRecord::Base
	has_one :questionlists, dependent: :destroy
end
