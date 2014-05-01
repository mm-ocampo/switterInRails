class User < ActiveRecord::Base
	has_many :swits, dependent: :destroy
	has_many :comments, dependent: :destroy
end
