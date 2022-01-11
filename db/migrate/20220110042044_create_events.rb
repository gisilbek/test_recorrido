class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :contrato, foreign_key: true
      t.enum :engineer

      t.timestamps
    end
  end
end
