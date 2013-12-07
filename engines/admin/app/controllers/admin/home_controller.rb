module Admin
  class HomeController < ApplicationController

    def index
      render text: "Welcome to Admin Panel!!"
    end

  end
end