class Post < ActiveRecord::Base
  obfuscate_id
	acts_as_votable
	belongs_to :user
	has_many :comments
	has_attached_file :image, styles: { medium: "700x500#", small: "350x250#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def has_expired?
    if (self.expiration <=> Date.today) == (-1) then true else false end
  end
end
