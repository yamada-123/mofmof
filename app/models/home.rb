class Home < ApplicationRecord
  validates :property, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :remarks, presence: true
end
