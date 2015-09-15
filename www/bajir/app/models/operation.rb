class Operation < ActiveRecord::Base
    has_many :procedures
    has_many :surveytemplates
    
    #unsure whether both of these validations work in this format
    validates :code, presence: true
    validates :description, presence: true
end
