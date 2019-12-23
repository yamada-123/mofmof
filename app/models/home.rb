class Home < ApplicationRecord
  validates :property, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :remarks, presence: true
  has_many :stations
  accepts_nested_attributes_for :stations, allow_destroy: true
end
