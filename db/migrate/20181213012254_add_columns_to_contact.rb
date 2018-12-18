class AddColumnsToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts ,:name, :string
    add_column :contacts ,:email, :string
    add_column :contacts ,:content, :string
  end
end
