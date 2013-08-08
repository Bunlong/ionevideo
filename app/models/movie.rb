class Movie < ActiveRecord::Base
  attr_accessible :title, :url, :type_id
  validates :title, :url, :presence => true

  belongs_to :type
end