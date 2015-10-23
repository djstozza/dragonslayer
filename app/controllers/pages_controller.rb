class PagesController < ApplicationController
  before_action :check_if_logged_in
  def home
  	gon.user_id = @current_user.id

  	@scores = Score.where( :user_id => @current_user )
  	gon.high_score = @scores.pluck(:points).sort.last if @scores
  	gon.high_score ||= 0
  end

  private
   def check_if_logged_in
      redirect_to root_path unless @current_user.present?
   end
end
