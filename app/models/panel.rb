class Panel < ActiveRecord::Base
  attr_accessible :url, :text, :comic_id
  belongs_to :comic
end
