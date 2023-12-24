class PostImage < ApplicationRecord
 has_one_attached :image
  has_many :post_comments, dependent: :destroy
 belongs_to :user
 def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
 end
end
