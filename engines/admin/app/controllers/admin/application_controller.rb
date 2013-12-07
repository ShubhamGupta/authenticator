module Admin
  class ApplicationController < ActionController::Base
    before_filter :restrict_aliens


    private

      def restrict_aliens
        unless admin_signed_in?
          flash[:notice] = "Access Restricted."
          redirect_to ::Auth::Engine.routes.url_helpers.root_path
        end
      end
  end
end
