class Fashion < ApplicationRecord
  belongs_to :user
  has_many :fashions_comments
  # mount_uploader :image, ImagesUploader


end
