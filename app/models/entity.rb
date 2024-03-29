class Entity < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  extend FriendlyId
  friendly_id :name, use: :slugged

  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :logo, LogoUploader

  validate :validate_minimum_image_size, :on => :create if :complete? #:unless => :new_record?# if new_record?

  def should_generate_new_friendly_id? #will change the slug if the name changed
    name_changed?
  end


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
