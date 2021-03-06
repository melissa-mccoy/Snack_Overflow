class User < ActiveRecord::Base
	has_many :answers
	has_many :questions
	has_many :comments
  validates :name, presence:true
  validates :email, presence:true
  validates :username, presence:true
  validates :password, presence:true
  validates_uniqueness_of :email
  validates_uniqueness_of :username

end
