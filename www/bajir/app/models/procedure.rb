class Procedure < ActiveRecord::Base
	has_many :questionnaires
    validates :tnumber, presence: true,
					length: { minimum: 5 }
end
