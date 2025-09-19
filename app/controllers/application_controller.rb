class ApplicationController < ActionController::Base
  private

  def after_sign_in_path_for(resource)
    if resource.is_a?(AdminUser)
      admin_path
    elsif resource.is_a?(User)
      dashboard_path
    end
  end
end
