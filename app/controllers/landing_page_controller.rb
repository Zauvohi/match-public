class LandingPageController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    return redirect_to admin_user_manager_index_path if current_user&.admin?

    redirect_to new_match_activity_path(@match) unless current_user.nil?
  end
end
