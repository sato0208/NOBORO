class CreateTrophies < ActiveRecord::Migration[5.2]
  def change
    create_table :trophies do |t|
      t.integer :climber_id
      t.string :my_trophy_name
      t.string :my_trophy_image_id

      t.timestamps
    end
  end
end
