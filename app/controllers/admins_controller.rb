class AdminsController < ApplicationController

  before_action :authenticate_admin!

  # def show
  #   @admin = Admin.find(params[:id])
  # end

  def admin_home
    # redirect_to action: "show", id: current_admin.id

    # @coincidents = Coincident.all.order(:name)

    @coincidents = FourthYear.all.order(:created_at)
    render 'admin/show_fourth_year', admin: current_admin.id, @coincidents => @coincidents
  end

end