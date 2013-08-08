class Singer < ActiveRecord::Base
  attr_accessible :name, :gender, :photo
  validates :name, :gender, :photo, :presence => true
  
  has_attached_file :photo, :url => "/assets/singers/:id/:style/:basename.:extension", :path => ":rails_root/public/assets/singers/:id/:style/:basename.:extension"
  validates_attachment_presence :photo

	has_many :musics
end