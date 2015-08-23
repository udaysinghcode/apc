class Post < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
	has_attached_file :image, styles: { medium: "700x500#", small: "350x250#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def price_based_on_minimum_order
  	return 5
  end

  def minimum_number_to_order_at_said_price
  	return 6
  end

  def order_due_date
  end
end
