class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.references :climber, foreign_key: true
      t.references :battler, foreign_key: { to_table: :climbers }
      t.boolean :is_valid_status, default: false, null: false
      t.datetime :finish_at

      t.timestamps
      t.index [:climber_id, :battler_id]
    end
  end
end