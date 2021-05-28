class Estate < ApplicationRecord
	belongs_to :user,  optional: true
	has_many :payroll

end
