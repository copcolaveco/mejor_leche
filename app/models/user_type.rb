class UserType < ApplicationRecord
	has_many :secondary_user_types
	has_many :users
end
