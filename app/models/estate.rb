class Estate < ApplicationRecord
	belongs_to :user,  optional: true
	belongs_to :department,  optional: true
	belongs_to :productive_area,  optional: true
	has_many :payroll 
	has_many :has_estates
	has_many :users, through: :has_estates
	after_save :add_has_estate
	before_destroy :destroy_has_estate

	validates :name, :dicose, :department_id, presence: true
	validates :dicose, length: { minimum: 9, message: " lo componen 9 caracteres." }
	validates :dicose, length: { maximum: 9, message:" lo componen 9 caracteres." }
	validates :name, length: { maximum: 50, message:"Maximo de 50 caracteres." }	
  	validates :dicose, numericality: { only_integer: true, message: "solo valores numericos"}

	  def add_has_estate
	  	@estate = self
	    @has_estate = HasEstate.create(estate_id: @estate.id, user_id: @estate.user_id)
	  end

	  def destroy_has_estate
	  	@estate = self
	  	@estate_id = HasEstate.where(estate_id: @estate.id)
		@payrolls = Payroll.where(estate_id: @estate.id)
	  	HasEstate.destroy(@estate_id.ids)

		@payrolls.each do |p|
			Payroll.destroy(p.id)
		end
	  end
end
