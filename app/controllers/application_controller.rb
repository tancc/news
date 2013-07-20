class ApplicationController < ActionController::Base
  protect_from_forgery

  def is_admin?
    redirect_to root_path unless current_user.try(:admin?)
  end

end
