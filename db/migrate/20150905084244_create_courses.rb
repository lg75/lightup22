class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.references :user, index: true, foreign_key: true
      t.string :fichier_video

      t.timestamps null: false
    end
  end
end
