class Player < ActiveRecord::Base

  validates :firstname, presence: true
  validates :team, presence: true
end
