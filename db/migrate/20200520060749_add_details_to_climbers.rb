class AddDetailsToClimbers < ActiveRecord::Migration[5.2]
  def change
    add_column :climbers, :win_count, :integer
  end
end