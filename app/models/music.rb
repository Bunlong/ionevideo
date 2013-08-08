class Music < ActiveRecord::Base
  attr_accessible :title, :url , :singer_id, :type_id
  validates :title, :url, :presence => true

  belongs_to :singer
  belongs_to :type
end
