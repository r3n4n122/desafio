class Address < ApplicationRecord
  belongs_to :municipe
  belongs_to :state
  belongs_to :city

  accepts_nested_attributes_for :state, :city, allow_destroy: true
end