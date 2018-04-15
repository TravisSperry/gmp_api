class ApplicationController < ActionController::Base

  private
  def after_sign_in_path_for(resource)
    dashboard_path || root_path
  end
end
