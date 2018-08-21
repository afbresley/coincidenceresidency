class CoincidentTroisController < ApplicationController
  def index
  end

  def application
    # coincident_trois/coincident_trois
    @coincidentTroi = CoincidentTroi.new
  end

  def new
    @coincidentTroi = CoincidentTroi.new
  end

  def create
    @coincidentTroi = CoincidentTroi.new( coincident_troi_params )
    # debugger
    if @coincidentTroi.save
      redirect_to home_path
    else
      render nothing: true
    end
  end

  def show
  end

  def destroy
    @coincidentTroi = CoincidentTroi.find(params[:id])
    if @coincidentTroi.destroy
      # flash[:notice] = t('success', obj: 'meow meow', past_participle: 'deleted')
    end
    redirect_to admin_path
  end

  protected

    def coincident_troi_params
      params.require(:coincident_troi).permit(
        :name,
        :email,
        :address,
        :birthday,
        :website,
        :tell_us,
        :why_ams_you,
        :link1,
        :link2,
        :link3,
        :link_to_prompt,
        :how_did_you_hear,
      )
    end
end
