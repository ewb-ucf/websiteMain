class User < ActiveRecord::Base
	require 'digest/md5'

	has_and_belongs_to_many :roles

	attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :gender, :pid
	before_save :encrypt_password

	validates :first_name,
		:presence => TRUE,
		:length => {
			:minimum => 2,
			:allow_blank => TRUE
		}

	validates :last_name,
		:presence => TRUE,
		:length => {
			:minimum => 2,
			:allow_blank => TRUE
		}

	validates :password,
		:presence => TRUE,
		:length => {
			:minimum => 6,
			:allow_blank => TRUE
		},
		:confirmation => TRUE

	validates :password_confirmation,
		:presence => TRUE
		
	validates :email,
		:presence => TRUE,
		:uniqueness => TRUE

	def encrypt_password
		self.password = Digest::MD5.hexdigest(password)
	end
end

class Role < ActiveRecord::Base
	has_and_belongs_to_many :users
end