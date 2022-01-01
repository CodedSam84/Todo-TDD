class TodoosController < ApplicationController
  before_action :authenticate

  def index
    @todoos = current_user.todoos
  end

  def new
    @todoo = Todoo.new
  end

  def create
    @todoo = current_user.todoos.create(todoo_params)
    redirect_to todoos_path
  end

  private

  def todoo_params
    params.require(:todoo).permit(:title)
  end
end