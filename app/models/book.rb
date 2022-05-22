class Book < ApplicationRecord
  has_one_attached :image
  has_one_attached :profile_image
  belongs_to :user

  def get_image
    unless image.attached?
      file_path = Rails.root.joun('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
end
