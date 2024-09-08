class CreateMunicipe < ActiveRecord::Migration[7.0]
  def change
    create_table :municipes do |t|
      t.string :full_name
      t.string :cpf
      t.string :cns
      t.string :email
      t.datetime :date_of_birthday
      t.string :cellphone
      t.integer :status
      t.timestamps
    end

    create_table :addresses do |t|
      t.string :street
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :uf
    end
  end
end
