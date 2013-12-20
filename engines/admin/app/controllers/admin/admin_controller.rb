module Admin
  class AdminController < ::Admin::ApplicationController
    def edit_avatar
      @user = Auth::Admin.where(id: params[:id]).first
      redirect_to root_path, notice: "Can't find the resource" unless @user
    end

    def update
      debugger
      p "here"
    end
  end
end