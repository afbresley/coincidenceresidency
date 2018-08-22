class HomeController < ApplicationController
  def index
    # @coincident = Coincident.new
    # @coincidentTwo = CoincidentTwo.new
    
    if params[:id]
      coincidentTroi = CoincidentTroi.find(params[:id])
      if coincidentTroi
        @coincidentTroi = coincidentTroi
      end
    end
  end

  def season2017
  end

  def joachim
  end

  def application
  end

end