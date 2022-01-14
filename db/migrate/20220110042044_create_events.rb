class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.date :date, null: false
      t.integer :personal, null: false
      t.references :contract, foreign_key: true
      t.time :start_time, null: false
      t.time :end_time, null: false

      t.timestamps
    end
  end
end
