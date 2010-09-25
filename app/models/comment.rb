class Comment < ActiveRecord::Base
	belongs_to :incidence
	belongs_to :user
end
