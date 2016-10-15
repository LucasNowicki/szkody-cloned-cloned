class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :mark
      t.string :model
      t.string :year
      t.string :registration
      t.string :owner

      t.timestamps null: false
    end
  end
end
