class Valentine < ActiveRecord::Base

  validates :message, length: {:maximum => 2000, too_long: "That's too long of a love letter! Make it less than 500 words :)"}

end
