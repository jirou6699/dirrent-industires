class Experience < ApplicationRecord
extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to_active_hash :price
belongs_to_active_hash :prefecture
end
