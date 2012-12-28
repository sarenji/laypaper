class Comic < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :panels

  extend FriendlyId
  friendly_id :name, use: :slugged
end
