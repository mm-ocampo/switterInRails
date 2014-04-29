class Swit < ActiveRecord::Base
	belongs_to :user
	validates :swit, length:{ maximum: 140 }
end
