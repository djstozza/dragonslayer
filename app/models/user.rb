# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin           :boolean
#  password_digest :text
#

class User < ActiveRecord::Base
has_secure_password

has_many :scores

validates :email, :presence => true, :uniqueness => true
validates :username, :presence => true, :uniqueness => true
validates :password, :length => {:minimum => 8}

end
