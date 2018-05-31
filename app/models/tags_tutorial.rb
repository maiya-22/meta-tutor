class TagsTutorial < ActiveRecord::Base
	self.table_name = "tags_tutorials"
	belongs_to :tutorial
	belongs_to :tag
end