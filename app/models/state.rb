class State < ApplicationRecord
  has_many :addresses, class_name: "Address"
end