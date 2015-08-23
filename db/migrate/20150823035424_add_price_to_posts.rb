class AddPriceToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :minimum_price, :integer
  end
end
