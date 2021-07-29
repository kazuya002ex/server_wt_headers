class HeaderContent < ApplicationRecord

  mount_uploader :image, ImageUploader
  mount_uploader :responsive_image, ImageUploader
end
