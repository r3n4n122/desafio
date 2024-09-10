class Municipe < ApplicationRecord
  extend Enumerize

  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true

  enumerize :status, in: [inactive: 0, active: 1]

  validates :full_name, :date_of_birthday, :cpf, :email, :uf, :cellphone, :status, :address, presence: true

  accepts_nested_attributes_for :address

  def valid_cpf
    errors.add(:cpf, message: "CPF invalido") unless CPF.valid?(self.cpf)
  end

end