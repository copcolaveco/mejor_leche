class HasEstate < ApplicationRecord
  belongs_to :estate
  belongs_to :user
  after_save :duplicate_has_estate

  def duplicate_has_estate
    @has_estate = self
    HasEstate.find_or_create_by(estate_id: @has_estate.estate_id, user_id: @has_estate.user_id)
  end

end
