class HomeController < ApplicationController
  def index
    # @coincident = Coincident.new
    # @coincidentTwo = CoincidentTwo.new
    
    if params[:id]
      penta_year = PentaYear.find(params[:id])
      if penta_year
        @penta_year = penta_year
      end
    end
  end

  def season2017
  end

  def season2020
  end

  def joachim
  end

  def application
  end

  def faq2020
  end

  def schedule
  end

end