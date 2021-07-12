class Taluka < ApplicationRecord
  validates :name, presence: true
  belongs_to :state
  belongs_to :district
end
