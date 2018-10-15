class VariantType < ApplicationRecord
  has_many :variant_values, dependent: :restrict_with_error

  accepts_nested_attributes_for :variant_values, allow_destroy: true

  validates :name, presence: true
end
