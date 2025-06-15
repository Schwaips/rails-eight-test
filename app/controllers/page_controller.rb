class PageController < ApplicationController
  def home
    flash.now[:notice] = "Welcome to the home page!"
  end
end
