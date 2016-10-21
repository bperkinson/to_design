class CreateLandings < ActiveRecord::Migration
  def change
    create_table :landings do |t|
      t.string :image
      t.string :title
      t.text :description
      t.text :about
      t.text :about_sub
      t.text :philosophy

      t.timestamps null: false
    end
  end
end
