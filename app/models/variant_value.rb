class VariantValue < ApplicationRecord
  belongs_to :variant_type

  validates :name, presence: true
end
