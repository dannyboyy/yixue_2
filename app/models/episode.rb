class Episode < ActiveRecord::Base
	def previous
	  Episode.where(["id < ?", id]).last
	end

	def next
	  Episode.where(["id > ?", id]).first
	end

  # Use friendly_id for slugging
  extend FriendlyId
  friendly_id :name, use: :slugged
  
end
