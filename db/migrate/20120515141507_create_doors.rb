class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.string :idname
      t.string :ip
      t.float :state
      t.string :room

      t.timestamps
    end
  end
end
