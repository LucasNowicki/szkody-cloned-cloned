class AddCommentAndOfferToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :offer, :string
    add_column :posts, :comment, :string
  end
end
