class Entity < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :logo, LogoUploader

  validate :validate_minimum_image_size


  def complete?
  	!name.blank? && !description.blank? && !website.blank? && !logo.blank?
  end

  def validate_minimum_image_size
    image = MiniMagick::Image.open(logo.path)
    unless image[:width] >= 300 && image[:height] >= 300 && (image[:width] == image[:height])
      errors.add :image, "should be 300x300px minimum!" 
    end
  end
end
