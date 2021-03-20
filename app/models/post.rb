class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :content, presence: true, length: { maximum: 140 }
  # validates :image,   content_type: { in: %w[image/jpeg image/gif image/png],
  #                                     message: "must be a valid image format" },
  #                     size:         { less_than: 3.megabytes,
  #                                     message: "should be less than 3MB" }
  def display_image
    image.variant(resize_to_limit: [500, 500])
  end
end
