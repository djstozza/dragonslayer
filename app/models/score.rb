# == Schema Information
#
# Table name: scores
#
#  id            :integer          not null, primary key
#  points        :integer
#  user_id       :integer
#  dragon_slayer :boolean          default(FALSE)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Score < ActiveRecord::Base
	belongs_to :user

end
