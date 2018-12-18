class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.text :image
      t.float :area
      t.string :addres
      t.integer :count_people
      t.string :use
      t.float :shi_deposit
      t.float :rei_deposit
      t.float :rent_fee
      t.string :office_name
      t.integer :floor
      t.string :construction
      t.string :function
      t.integer :years

      t.timestamps
    end
  end
end
