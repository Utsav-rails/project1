class District < ApplicationRecord
  validates :name, presence: true
  belongs_to :state, dependent: :destroy
  has_many :talukas, dependent: :destroy
end
