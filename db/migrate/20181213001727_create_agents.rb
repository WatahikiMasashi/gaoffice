class CreateAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :post_code
      t.string :addres
      t.string :tel
      t.string :fax
      t.string :license
      t.string :holiday
      t.string :start
      t.string :finish

      t.timestamps
    end
  end
end
