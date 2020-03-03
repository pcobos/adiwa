class CreateCeremonies < ActiveRecord::Migration[5.2]
  def change
    create_table :ceremonies do |t|
      t.string :name
      t.string :location
      t.string :description
      t.integer :total_price
      t.integer :duration
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

