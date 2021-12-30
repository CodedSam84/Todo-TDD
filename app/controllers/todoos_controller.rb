class TodoosController < ApplicationController
  before_action :authenticate
  
  def index
    @todoos = Todoo.all
  end

  def new
    @todoo = Todoo.new
  end

  def create
    @todoo = Todoo.create(todoo_params)
    redirect_to todoos_path
  end

  private

  def todoo_params
    params.require(:todoo).permit(:title)
  end
end