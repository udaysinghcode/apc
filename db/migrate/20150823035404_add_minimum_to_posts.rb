class AddMinimumToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :minimum_order, :integer
  end
end
