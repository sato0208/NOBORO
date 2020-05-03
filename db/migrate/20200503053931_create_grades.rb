class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :grade
      t.string :trophy_name
      t.string :trophy_image_id

      t.timestamps
    end
  end
end
