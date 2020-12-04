class Experience < ApplicationRecord
belongs_to :user
extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to_active_hash :price
belongs_to_active_hash :prefecture

validates :company, presence: true
validates :position, presence: true
validates :title, presence: true

mount_uploader :image, ImageUploader
end
