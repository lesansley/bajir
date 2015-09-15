class Operation < ActiveRecord::Base
    has_many :procedures
    has_many :surveytemplates
    validates :code, presence: true, :desciption, presence: true
end
