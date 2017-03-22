require 'carrierwave/orm/activerecord'

class Image < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true

  def print_url
    self.file.url.gsub("https://", "http://")
  end
  
  mount_uploader :file, ImageUploader
end