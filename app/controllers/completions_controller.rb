class CompletionsController < ApplicationController
  def create
    current_user.todoos.find(params[:todoo_id]).touch :completed_at
    redirect_to root_path
  end
end