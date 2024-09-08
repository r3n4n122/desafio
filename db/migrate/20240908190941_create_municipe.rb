class CreateMunicipe < ActiveRecord::Migration[7.0]
  def change
    create_table :municipes do |t|
      t.string :full_name
      t.string :cpf
      t.string :cns
      t.string :email
      t.string :uf
      t.datetime :date_of_birthday
      t.string :cellphone
      t.integer :status, default: 1
      t.timestamps
    end

    create_table :states do |t|
      t.string :abbreviation
      t.string :name
      t.timestamps
    end

    create_table :cities do |t|
      t.string :name
      t.timestamps
    end

    create_table :addresses do |t|
      t.string :street
      t.string :complement
      t.string :neighborhood
      t.string :number
      t.references :city
      t.references :state
      t.references :municipe
      t.timestamps
    end
  end
end
