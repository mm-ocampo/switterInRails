class Swit < ActiveRecord::Base
	belongs_to :user
	has_many :sweets, dependent: :destroy
	has_many :sours, dependent: :destroy
	has_many :comments, dependent: :destroy
	validates :swit, length:{ maximum: 140 }
end
