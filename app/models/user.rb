class User < ApplicationRecord
  validates :name, presence: true
  has_many :profiles
  accepts_nested_attributes_for :profiles
end
