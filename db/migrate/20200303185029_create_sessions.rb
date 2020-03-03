class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.references :ceremony, foreign_key: true
      t.datetime :start_at

      t.timestamps
    end
  end
end
