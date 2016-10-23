class AddOffersAndRecommendationsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :majchrzak, :string
    add_column :posts, :pcwo, :string
    add_column :posts, :solace, :string
    add_column :posts, :recommendation, :string
  end
end
