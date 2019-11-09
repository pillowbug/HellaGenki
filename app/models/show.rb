class Show < ApplicationRecord
  has_many :characters
  validates :name, presence: true
  validates :name, uniqueness: true
end
