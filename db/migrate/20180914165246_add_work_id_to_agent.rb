class AddWorkIdToAgent < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :work_id, :integer
  end
end
