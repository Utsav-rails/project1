class District < ApplicationRecord
  validates :name, presence: true
  belongs_to :state
  has_many :talukas, dependent: :destroy
end
