class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :authenticate_user!

  #############################################################################
  private
  # Authentication
  def authenticated_user
    current_admin || current_user
	end

end
