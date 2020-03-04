class ChangeDescriptionToTextInCeremonies < ActiveRecord::Migration[5.2]
  def change
    change_column :ceremonies, :description, :text
  end
end
