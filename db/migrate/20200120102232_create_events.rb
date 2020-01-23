class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|

      t.string :date 
      t.references :sport, null: false, foreign_key: true
      t.references :day_type, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
