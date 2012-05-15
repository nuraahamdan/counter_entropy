class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :idname
      t.string :ip
      t.date :time
      t.float :state

      t.timestamps
    end
  end
end
