class PentaYearsController < ApplicationController
  def new
    @penta_year = PentaYear.new
  end

  def create
    @penta_year = PentaYear.new(penta_year_params)
    if @penta_year.save
      redirect_to home_path(id: @penta_year.id)
    else
      render nothing: true
    end
  end

  protected

  def penta_year_params
    params.require(:penta_year).permit(
        :name,
        :email,
        :about_me,
        :attendance_capacity,
        :website,
        :location,
        :why,
        :proposal_link
    )
  end
end
