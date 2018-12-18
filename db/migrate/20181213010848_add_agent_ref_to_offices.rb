class AddAgentRefToOffices < ActiveRecord::Migration[5.1]
  def change
    add_reference :offices, :agent, foreign_key: true
  end
end
