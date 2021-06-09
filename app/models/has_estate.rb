class HasEstate < ApplicationRecord
  belongs_to :estate
  belongs_to :user
  after_save :duplicate_has_estate
  validate :check_event_is_unique, :on => :create

  def duplicate_has_estate
    @has_estate = self
    HasEstate.find_or_create_by(estate_id: @has_estate.estate_id, user_id: @has_estate.user_id)
  end

  def check_event_is_unique
    @has_estate = self
    if HasEstate.where(user_id: @has_estate.user_id, estate_id: @has_estate.estate_id).any?
        errors.add(:base, :duplicate)
        return false
    end
  end

end
