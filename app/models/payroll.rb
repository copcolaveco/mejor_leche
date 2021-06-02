class Payroll < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :estate, optional: true
	belongs_to :rodeos_main_breed, optional: true
end
