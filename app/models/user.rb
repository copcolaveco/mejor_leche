class User < ApplicationRecord
  before_destroy :destroy_asociation

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :payrolls
         has_many :estates
         belongs_to :secondary_user_type,  optional: true
         belongs_to :user_type,  optional: true

  attr_writer :login 
  validate :validate_username
  validates :business_name, :rut, :address, :identification_document, :phone_two, :location, :username, :user_type_id, presence: true
  validates :identification_document, length: { minimum: 8, message: "Minimo 8 numeros, sin puntos ni guiones." }
  validates :identification_document, length: { maximum: 8, message: "Maximo 8 numeros, sin puntos ni guiones." }
  validates :rut, length: { minimum: 12, message: "Minimo 12 numeros." }
  validates :rut, length: { maximum: 12, message: "Maximo 12 numeros." }
  validates :identification_document, :rut, :phone_two, :phone_one, numericality: { only_integer: true, message: "solo valores numericos"}

  has_many :has_estates
  has_many :estates, through: :has_estates
  
  def login
  	@login || username || email
  end      

  def self.find_for_database_authentication(warden_conditions)
  	conditions =  warden_conditions.dup
  	if login  = conditions.delete(:login)
  		where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase}]).first
  	elsif conditions.has_key?(:username) || conditions.has_key(:email)
  		where(conditions.to_h).first
  	end	
  end

  def validate_username
  	if User.where(email: username).exists?
  		errors.add(:username, :invalid)
  	end
  end

  def destroy_asociation
    @user = self
    @estates = Estate.where(user_id: @user.id)
    @estates.each do |e|
      Estate.destroy(e.id)      
    end

    @has_estates = HasEstate.where(user_id: @user.id)
    @has_estates.each do |e|
      HasEstate.destroy(e.id) 
    end
  end

end
