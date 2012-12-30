class Section < ActiveRecord::Base
  attr_accessible :acronym, :name, :short_name, :position, :content, :parent_id
  has_ancestry
  validates :name, presence: true
end
