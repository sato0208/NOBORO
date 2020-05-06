class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :climber, foreign_key: true
      t.references :gym, foreign_key: true

      t.timestamps
      t.index [:climber_id, :gym_id], unique: true
    end
  end
end
