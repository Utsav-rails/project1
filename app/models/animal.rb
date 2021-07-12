class Animal < ApplicationRecord
  validates :name, presence: true
  validates :image_url, presence: true
  has_one_attached :image_url

  # validates_attachment_size :image_url, :less_than => 1.megabytes
  # validates :image_url, presence: true, animal: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..2.megabytes }

  # validates_with AttachmentSizeValidator, attributes: :image_url, less_than: 1.megabytes
  #  validates_attachment :image_url, presence: true, size: { less_than: 1.megabytes }
end
