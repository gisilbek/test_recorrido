class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.string :name, null: false, unique: true
      t.integer :week_start_time,null: false
      t.integer :week_end_time, null: false
      t.integer :weekend_start_time, null: false
      t.integer :weekend_end_time, null: false

      t.timestamps
    end
  end
end
