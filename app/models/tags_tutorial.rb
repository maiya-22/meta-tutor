class TagsTutorial < ActiveRecord::Base
	self.table_name = "tags_tutorials"
	belongs_to :tutorial,  required: false
	belongs_to :tag,  required: false
end