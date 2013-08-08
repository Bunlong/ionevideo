class Type < ActiveRecord::Base
  attr_accessible :v_type
  validates :v_type, :presence => true

  has_many :musics
  has_many :movies
end