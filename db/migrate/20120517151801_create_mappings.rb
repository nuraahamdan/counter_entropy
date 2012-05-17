class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.string :idname
      t.string :ip
      t.string :room

      t.timestamps
    end
  end
end
