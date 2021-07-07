class Taluka < ApplicationRecord
  validates :name, presence: true
  belongs_to :state, dependent: :destroy
  belongs_to :district, dependent: :destroy
end
