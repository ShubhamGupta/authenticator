module Auth
  class ApplicationController < ActionController::Base

    ## This redirects the user to his respective engine.
    def after_sign_in_path_for(resource)
      ::Admin::Engine.routes.url_helpers.root_path if signed_in_resource.kind_of? Auth::Admin
    end

    def after_sign_out_path_for(resource)
      admin.root_path
    end

  end
end
