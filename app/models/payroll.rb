class Payroll < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :estate, optional: true
	belongs_to :rodeos_main_breed, optional: true

	validates :saved_date, :rodeos_main_breed_id, :user_id, :liter_sent, :liters_of_milk_not_sent, :cell_count, :bacterial_count, :grease, :protein, :lactose, :milking_cows, :dry_cows, :cow_dough, presence: true
end
