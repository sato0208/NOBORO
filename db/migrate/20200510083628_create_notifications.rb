class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.references :visiter, foreign_key: { to_table: :climbers }
      t.references :visited, foreign_key: { to_table: :climbers }
      t.integer :confirm_status
      t.boolean :is_checked_status, default: false, null: false
      t.integer :battle_id

      t.timestamps
      t.index [:visiter_id, :visited_id], unique: true
    end
  end
end
