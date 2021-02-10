class HomesController < ApplicationController
  before_action :set_user

  def top
  end

  def about
  end

  private
  def set_user
    @user = User.find(current_user.id) if user_signed_in?
  end
end
