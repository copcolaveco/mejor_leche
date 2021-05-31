class Estate < ApplicationRecord
	belongs_to :user,  optional: true
	belongs_to :department
	has_many :payroll

end
