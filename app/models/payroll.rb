class Payroll < ApplicationRecord
	belongs_to :user
	belongs_to :month
end
