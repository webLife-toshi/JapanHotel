class Photo < ActiveRecord::Base
  attr_accessible :name, :image, :photoable_id, :photoable_type, :remote_image_url

  validates :name, presence: true
  belongs_to :photoable, :polymorphic => true
  mount_uploader :image, ImageUploader
end
