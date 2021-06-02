class Estate < ApplicationRecord
	belongs_to :user,  optional: true
	belongs_to :department,  optional: true
	has_many :payroll

end
