class State < ApplicationRecord
  validates :name, presence: true
  has_many :districts, dependent: :destroy
  has_many :talukas, dependent: :destroy

end
