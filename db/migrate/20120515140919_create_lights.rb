class CreateLights < ActiveRecord::Migration
  def change
    create_table :lights do |t|
      t.string :idName
      t.string :ip
      t.float :state
      t.string :room

      t.timestamps
    end
  end
end
