class AddClimbersToIntroductions < ActiveRecord::Migration[5.2]
  def change
    add_column :climbers, :introduction, :string
  end
end
