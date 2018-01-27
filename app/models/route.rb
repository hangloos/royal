class Route < ApplicationRecord
  has_many :quantities
  has_many :units, through: :quantities
  belongs_to :location
end
