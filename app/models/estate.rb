class Estate < ApplicationRecord
	belongs_to :user,  optional: true
	belongs_to :department,  optional: true
	has_many :payroll
	has_many :has_estates
	has_many :users, through: :has_estates
	after_save :add_has_estate
	before_destroy :destroy_has_estate

	validates :name, :dicose, presence: true
	validates :dicose, length: { minimum: 9 }
	validates :dicose, length: { maximum: 9 }
	validates :name, length: { maximum: 50 }	
  	validates :dicose, numericality: { only_integer: true, message: "solo valores numericos"}

	  def add_has_estate
	  	@estate = self
	    @has_estate = HasEstate.create(estate_id: @estate.id, user_id: @estate.user_id)
	  end

	  def destroy_has_estate
	  	@estate = self
	  	@has = HasEstate.where(estate_id: @estate.id)
	  	HasEstate.destroy(@has.ids)
	  end
end
