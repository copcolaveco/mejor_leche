class Payroll < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :estate, optional: true
	belongs_to :rodeos_main_breed, optional: true

	validates :saved_date, 
	:rodeos_main_breed_id, 
	:user_id, 
	:liter_sent, 
	:liters_of_milk_not_sent, 
	:cell_count, 
	:bacterial_count, 
	:grease, 
	:protein, 
    :lactose, 
	:milking_cows, 
	:dry_cows, 
	:cow_dough, 
	presence: true

	validates :liter_sent, :liters_of_milk_not_sent,
	numericality: {
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 1000000,
        only_integer: false, # or false to accept decimals
		message:", Litros remitidos debe ser mayor a 0." 
    }

	validates :cell_count,
    numericality: {
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 1500,
        only_integer: false, # or false to accept decimals
		message:", Recuento celular va hasta 1500" 
    }

	validates :bacterial_count,
    numericality: {
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 400,
        only_integer: false, # or false to accept decimals
		message:", Recuento celular va hasta 1500" 
    }

	validates :grease,:protein,:lactose,
    numericality: {
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 10,
        only_integer: false, # or false to accept decimals
		message:", Valores entre 1 y 10" 
    }

	validates :mun,
    numericality: {
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 100,
        only_integer: false, # or false to accept decimals
		message:", Valores entre 1 y 100" 
    }

	validates :cryoscopy,
    numericality: {
        greater_than_or_equal_to: -1,
        less_than_or_equal_to: 0,
        only_integer: false, # or false to accept decimals
		message:", Valores entre -1 y 0" 
    }

	validates :vm_surface,
    numericality: {
        greater_than_or_equal_to: 0,
        less_than_or_equal_to: :dairy_surface,
        only_integer: false, # or false to accept decimals
		message:", Superficie VM no puede ser mayor que la superficie total." 
    }

	validates :milking_cows, :dry_cows,
    numericality: {
        greater_than_or_equal_to: 0,
        less_than_or_equal_to: 100000,
        only_integer: false, # or false to accept decimals
		message:", Valores menores a 100000." 
    }

	validates :suckling_calves,
    numericality: {
        greater_than_or_equal_to: 0,
        less_than_or_equal_to: 5000,
        only_integer: false, # or false to accept decimals
		message:", Valores menores a 5000." 
    }

	validates :conc_protein,:conc_energy, :wet_grain, :henilages, :silo,
    numericality: {
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 50,
        only_integer: false, # or false to accept decimals
		message:", Valores menores a 50." 
    }

	validates :mineral_salts,
    numericality: {
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 1000,
        only_integer: false, # or false to accept decimals
		message:", Valores menores a 1000." 
    }

	validates :no_grazing_days,
    numericality: {
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 32,
        only_integer: false, # or false to accept decimals
		message:", Valores menores a 32." 
    }

end
