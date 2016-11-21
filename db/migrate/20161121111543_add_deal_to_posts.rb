class AddDealToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :contract, :string
    add_column :posts, :dealdate, :string
    add_column :posts, :gender, :string
    add_column :posts, :name, :string
    add_column :posts, :card, :string
    add_column :posts, :authority, :string
    add_column :posts, :pesel, :string
    add_column :posts, :address, :string
    add_column :posts, :vin, :string
    add_column :posts, :damagedate, :string
    add_column :posts, :insurer, :string
    add_column :posts, :damagenumber, :string
    add_column :posts, :amount, :string
    add_column :posts, :gros, :string
    add_column :posts, :payment, :string
    add_column :posts, :place, :string
    add_column :posts, :bankaccount, :string
    add_column :posts, :dealtype, :string
    add_column :posts, :phone, :string
    add_column :posts, :email, :string
  end
end
