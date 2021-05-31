class SecondaryUserType < ApplicationRecord
	has_many :users 
	belongs_to :user_type
end
