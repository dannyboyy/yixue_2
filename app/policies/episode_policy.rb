class EpisodePolicy < ApplicationPolicy

  # Override default policy. All users regardless of user types can access to the episodes list
  def index?
    true
  end
  
end