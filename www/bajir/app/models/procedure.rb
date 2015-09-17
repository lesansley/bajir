class Procedure < ActiveRecord::Base
	belongs_to :operations
    has_many :surveyresponses, dependent: :destroy
    validates :tnumber, presence: true,
					length: { minimum: 1 }
end
