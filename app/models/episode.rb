class Episode < ActiveRecord::Base
	def previous
	  Episode.where(["id < ?", id]).last
	end

	def next
	  Episode.where(["id > ?", id]).first
	end
end
