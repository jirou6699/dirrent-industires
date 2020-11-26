class Profile < ApplicationRecord
  belongs_to :user, optional: true
  validates  :name, :age, :sex, :school, :major, :graduate, :student ,presence: true
end
