class CoincidentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @coincident = Coincident.new( coincident_params )
    if @coincident.save
      render nothing: true
    else
      render nothing: true
    end
  end

  def show
  end

  protected

    def coincident_params
      params.require(:coincident).permit(
        :name,
        :email,
        :address,
        :project_description,
        :link1,
        :link2,
        :link3,
        :website,
        :cv_resume_link,
        :birthday,
        :why_apply,
        :instruments
      )
    end
end
