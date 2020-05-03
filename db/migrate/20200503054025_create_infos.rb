class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.integer :gym_id
      t.string :info

      t.timestamps
    end
  end
end
