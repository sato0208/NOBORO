class AddGymsToGymImageIds < ActiveRecord::Migration[5.2]
  def change
    add_column :gyms, :gym_image_id, :string
  end
end
