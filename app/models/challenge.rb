class Challenge < ApplicationRecord
  belongs_to :user
  has_many :fears, dependent: :destroy
  has_many :benefits, dependent: :destroy
  has_many :fixes, through: :fears
  has_many :preventions, through: :fears
  accepts_nested_attributes_for :benefits
  accepts_nested_attributes_for :fears
end
