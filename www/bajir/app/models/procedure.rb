class Procedure < ActiveRecord::Base
	validates :tnumber, presence: true,
					length: { minimum: 5 }
end
