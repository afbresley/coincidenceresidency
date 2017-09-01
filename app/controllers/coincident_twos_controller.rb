class CoincidentTwosController < ApplicationController
  def index
  end

  def new
  end

  def create
    @coincidentTwo = CoincidentTwo.new( coincident_two_params )
    # debugger
    if @coincidentTwo.save
      render nothing: true
    else
      render nothing: true
    end
  end

  def show
  end

  def destroy
    @coincidentTwo = CoincidentTwo.find(params[:id])
    if @coincidentTwo.destroy
      # flash[:notice] = t('success', obj: 'meow meow', past_participle: 'deleted')
    end
    redirect_to admin_path
  end

  protected

    def coincident_two_params
      params.require(:coincident_two).permit(
        :name,
        :email,
        :address,
        :birthday,
        :website,
        :how_did_you_hear,
        :tell_us,
        :link_to_prompt,
        :link1,
        :link2,
        :link3,
        :instruments
      )
    end
end
