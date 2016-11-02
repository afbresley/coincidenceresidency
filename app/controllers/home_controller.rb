class HomeController < ApplicationController
  def index
    @coincident = Coincident.new
  end
end