class Payroll < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :estate, optional: true
end
