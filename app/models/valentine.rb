class Valentine < ActiveRecord::Base

  validates :message, length: {:minimum => 4, :maximum => 500, too_short: "must be more than 4 characters."}

end
