class Player < ActiveRecord::Base

  validates :firstname, presence: true
  validates :team, presence: true
  validates :rank, presence: true
  validates :position, presence: true
end
