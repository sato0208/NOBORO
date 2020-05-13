class CreateBattleHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :battle_histories do |t|
      t.references :winner, foreign_key: { to_table: :climbers }
      t.integer :winner_count
      t.references :loser, foreign_key: { to_table: :climbers }
      t.integer :loser_count
      t.boolean :is_draw_status, default: false, null: false
      t.datetime :started_at
      t.datetime :finished_at
      t.integer :present_trophy_id

      t.timestamps
    end
  end
end