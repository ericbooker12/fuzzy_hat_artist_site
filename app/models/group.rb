class Group < ApplicationRecord
  belongs_to :gallery

  # how to do the thumbnail as required? Series may be entered before an image, and thus image_id wouldn't exist yet. IF thumbnail isn't technically a foreign ID, then the default value could be 1, and the Admin would just change the thumbnail if desired.

  # def self.active
  #   Group.where(archive: false)
  # end

end
