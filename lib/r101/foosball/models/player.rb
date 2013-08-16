class Player < ActiveRecord::Base
  validates_uniqueness_of :nickname
end
