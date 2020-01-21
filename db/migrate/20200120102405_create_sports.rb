class CreateSports < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.text :description
      t.integer :price_per_person
      t.string :main_image

      t.timestamps
    end
  end
end
