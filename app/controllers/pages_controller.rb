class PagesController < ApplicationController
  def home
  	gon.user_id = @current_user.id

  	@scores = Score.where( :user_id => @current_user )
  	gon.high_score = @scores.pluck(:points).sort.last if @scores
  	gon.high_score ||= 0
  end
end
