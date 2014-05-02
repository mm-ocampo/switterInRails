class User < ActiveRecord::Base
	has_many :swits, dependent: :destroy
	has_many :comments, dependent: :destroy
	validate :username, :presence => true, :uniqueness => true,  length: { in: 6..20 }
	validates_length_of :password, :in => 8..20, :on => :create, confirmation: true
end
