class AdminsController < ApplicationController

  before_action :authenticate_admin!

  # def show
  #   @admin = Admin.find(params[:id])
  # end

  def admin_home
    # redirect_to action: "show", id: current_admin.id

    @coincidents = Coincident.all
    render 'admin/show', admin: current_admin.id, @coincidents => @coincidents
  end

end