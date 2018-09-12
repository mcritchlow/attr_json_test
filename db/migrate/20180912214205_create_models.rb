class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.jsonb :json_attributes
    end

    create_table :works do |t|
      t.jsonb :json_attributes
    end

    add_index :agents, :json_attributes, using: :gin
    add_index :works, :json_attributes, using: :gin
  end
end
