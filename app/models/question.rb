class Question < ActiveRecord::Base

  belongs_to :survey
  has_one :creator, through: :survey

end
