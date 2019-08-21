class FourthYearsController < ApplicationController
  def index
  end

  def new
    @fourthYear = FourthYear.new
  end

  def application
    @fourthYear = FourthYear.new
  end

  def create
    @fourthYear = FourthYear.new(fourth_year_params)
    if @fourthYear.save
      redirect_to home_path(id: @fourthYear.id)
    else
      render nothing: true
    end
  end

  protected
    def fourth_year_params
      params.require(:fourth_year).permit(
        :name,
        :email,
        :proposal_link,
        :about_me
      )
    end
end
