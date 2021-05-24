class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :payroll
         has_many :estates
         belongs_to :secondary_user_type, optional: true
         belongs_to :department

  attr_writer :login 
  validate :validate_username
  accepts_nested_attributes_for :secondary_user_type
   # validates :body, presence: true
  
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
  		error.add(:username, :invalid)
  	end
  end
end
