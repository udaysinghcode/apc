class AddExpirationToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :expiration, :date
  end
end
