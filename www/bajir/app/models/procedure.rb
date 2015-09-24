class Procedure < ActiveRecord::Base
	belongs_to :operation
    has_many :surveyresponses
    validates :tnumber, presence: true,
					length: { minimum: 1 }
end
