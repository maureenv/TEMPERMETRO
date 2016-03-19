class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :color
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end