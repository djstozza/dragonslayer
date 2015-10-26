class PagesController < ApplicationController
  before_action :check_if_logged_in
  def home
  	gon.user_id = @current_user.id
    @scores = Score.all
  end

  private
   def check_if_logged_in
      redirect_to root_path unless @current_user.present?
   end
end
