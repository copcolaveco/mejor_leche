class Payroll < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :estate, optional: true
	belongs_to :rodeos_main_breed, optional: true
    before_create :calculos
    before_update :calculos


    def calculos 
        @payroll = self

        @payroll.cell_count = @payroll.cell_count * 1000
        @payroll.bacterial_count = @payroll.bacterial_count * 1000

        @payroll.cow_dough = @payroll.milking_cows + @payroll.dry_cows

        @payroll.liters_produced = @payroll.liter_sent + @payroll.liters_of_milk_not_sent

        days = Time.days_in_month(Time.now.month, Time.now.year)
        @payroll.liters_day_VO = (@payroll.liters_produced / @payroll.milking_cows / days ).round(2)

        @payroll.daily_dry_bases_energy_conc = (@payroll.conc_energy * 0.89) * 0.90
        @payroll.daily_dry_bases_protein_conc = (@payroll.conc_protein * 0.89) * 0.90
        @payroll.daily_dry_bases_balanced_ration = (@payroll.balanced_ration * 0.89) * 0.90
        @payroll.daily_dry_bases_wet_grain_silo = (@payroll.wet_grain * 0.70) * 0.90
        @payroll.daily_dry_bases_henilaje = (@payroll.henilages * 0.50) * 0.90
        @payroll.daily_dry_bases_silo = (@payroll.silo * 0.30) * 0.90
        @payroll.daily_dry_bases_bale = (@payroll.bale * 0.70) * 0.90
        @payroll.daily_dry_bases_total_without_pasture = 0
        @payroll.daily_dry_bases_total_without_pasture = @payroll.daily_dry_bases_energy_conc + @payroll.daily_dry_bases_protein_conc + @payroll.daily_dry_bases_balanced_ration + @payroll.daily_dry_bases_wet_grain_silo + @payroll.daily_dry_bases_henilaje + @payroll.daily_dry_bases_silo + @payroll.daily_dry_bases_bale + @payroll.daily_dry_bases_total_without_pasture
        @payroll.daily_dry_bases_total = 8 + 0.5 * @payroll.liters_day_VO
        @payroll.daily_dry_bases_pasture_consumption = @payroll.daily_dry_bases_total - @payroll.daily_dry_bases_total_without_pasture

        @payroll.daily_proteins_energy_conc = @payroll.daily_dry_bases_energy_conc * 0.12
        @payroll.daily_proteins_protein_conc = @payroll.daily_dry_bases_protein_conc * 0.20
        @payroll.daily_proteins_balanced_ration = @payroll.daily_dry_bases_balanced_ration * 0.18
        @payroll.daily_proteins_wet_grain_silo = @payroll.daily_dry_bases_wet_grain_silo * 0.09
        @payroll.daily_proteins_henilaje = @payroll.daily_dry_bases_henilaje * 0.16
        @payroll.daily_proteins_silo = @payroll.daily_dry_bases_silo * 0.15
        @payroll.daily_proteins_bale = @payroll.daily_dry_bases_bale *  0.12
        @payroll.daily_proteins_total_without_pasture = 0
        @payroll.daily_proteins_total_without_pasture = @payroll.daily_proteins_energy_conc + @payroll.daily_proteins_protein_conc + @payroll.daily_proteins_balanced_ration + @payroll.daily_proteins_wet_grain_silo + @payroll.daily_proteins_henilaje + @payroll.daily_proteins_silo + @payroll.daily_proteins_bale + @payroll.daily_proteins_total_without_pasture
        @payroll.daily_proteins_total = @payroll.daily_proteins_pasture_consumption + @payroll.daily_proteins_total_without_pasture
        @payroll.daily_proteins_pasture_consumption = @payroll.daily_dry_bases_pasture_consumption * 0.18

        @payroll.proportion_NR_NP = ((@payroll.liters_of_milk_not_sent / (@payroll.liters_of_milk_not_sent + @payroll.liter_sent)) * 100).round(0)
        @payroll.concentrated_liters_kg = ((@payroll.daily_dry_bases_energy_conc + @payroll.daily_dry_bases_protein_conc + @payroll.daily_dry_bases_balanced_ration + @payroll.daily_dry_bases_wet_grain_silo) / @payroll.liters_day_VO).round(3)
        @payroll.relationship_grase_protein = @payroll.protein / @payroll.grease
        @payroll.number_of_cow_mass = @payroll.milking_cows + @payroll.dry_cows
        @payroll.relationship_VO_VM = (@payroll.milking_cows / @payroll.number_of_cow_mass).round(2)
        @payroll.carga_VM_VMha = (@payroll.number_of_cow_mass / @payroll.dairy_surface).round(2)
        @payroll.protein_produced_in_milk = ( @payroll.protein / 100 ) * @payroll.liters_day_VO
        @payroll.nitrogen_use_efficiency = ((@payroll.protein_produced_in_milk / @payroll.daily_proteins_total) * 100).round(0)
        @payroll.daily_excretion = ((@payroll.daily_proteins_total - @payroll.protein_produced_in_milk) / 6.25).round(1)
        @payroll.monthly_excretion = (@payroll.daily_excretion * days * @payroll.milking_cows).round(0)
    end

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
		message:", Recuento bacteriano va hasta 1500" 
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
        greater_than_or_equal_to: 0,
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
