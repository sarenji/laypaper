class Panel < ActiveRecord::Base
  attr_accessible :url, :html, :text, :comic_id
  belongs_to :comic
end
