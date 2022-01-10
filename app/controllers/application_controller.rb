class ApplicationController < ActionController::Base
  before_action :require_authenticated_admin, except: %i[ index show ]
  skip_before_action :require_authenticated_admin, if: :devise_controller?

  private

  def require_authenticated_admin
      unless  current_user && current_user.admin == true
        flash[:notice] =  "Nu aveti privilegiile necesare pentru a efectua actiunea"
        redirect_to articles_path
      end
    end
end
