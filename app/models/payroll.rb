class Payroll < ApplicationRecord
	belongs_to :User, optional: true
	belongs_to :Estate, optional: true
end
