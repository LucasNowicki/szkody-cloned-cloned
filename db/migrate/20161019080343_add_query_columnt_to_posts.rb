class AddQueryColumntToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :oc, :string
    add_column :posts, :partial, :string
    add_column :posts, :private, :string
    add_column :posts, :after, :string
    add_column :posts, :credit, :string
    add_column :posts, :poland, :string
    add_column :posts, :pole, :string
    add_column :posts, :attorney, :string
    add_column :posts, :sold, :string
    add_column :posts, :invoice, :string
    add_column :posts, :deal, :string
  end
end
