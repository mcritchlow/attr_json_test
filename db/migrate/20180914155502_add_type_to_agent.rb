class AddTypeToAgent < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :type, :string
  end
end
