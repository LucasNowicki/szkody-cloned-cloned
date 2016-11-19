class AddColumnsToPostsTableUmowa < ActiveRecord::Migration
  def change
    add_column :posts, :has_offer, :boolean, default: false
  end
end
