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

  def destroy
    @coincident = Coincident.find(params[:id])
    if @coincident.destroy
      # flash[:notice] = t('success', obj: 'meow meow', past_participle: 'deleted')
    end
    redirect_to admin_path
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
