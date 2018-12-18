class AddPasswordToAgents < ActiveRecord::Migration[5.1]
  def change
    add_column :agents, :encrypted_password, :string
  end
end
