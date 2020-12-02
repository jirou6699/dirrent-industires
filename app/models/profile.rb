class Profile < ApplicationRecord
  belongs_to :user, optional: true
  validates  :name, :age_id, :sex, :school, :major, :graduate_id, :student ,presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :age
  belongs_to_active_hash :graduate

end
