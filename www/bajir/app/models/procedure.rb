class Procedure < ActiveRecord::Base
	has_many :surveyresponses, dependent: :destroy
    validates :tnumber, presence: true,
					length: { minimum: 5 }
end
