class Industry < ApplicationRecord
  has_ancestry
  has_many :experiences
end
