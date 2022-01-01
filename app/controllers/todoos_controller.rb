class TodoosController < ApplicationController
  before_action :authenticate

  def index
    @todoos = Todoo.where(email: current_user_email)
  end

  def new
    @todoo = Todoo.new
  end

  def create
    @todoo = Todoo.create(todoo_params.merge(email: current_user_email))
    redirect_to todoos_path
  end

  private

  def todoo_params
    params.require(:todoo).permit(:title)
  end
end