class Municipe < ApplicationRecord
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true
end