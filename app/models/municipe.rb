class Municipe < ApplicationRecord
  extend Enumerize

  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true

  enumerize :status, in: [inactive: 0, active: 1]
end