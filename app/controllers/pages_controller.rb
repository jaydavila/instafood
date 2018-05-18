class PagesController < ApplicationController
  def index
    redirect_to recipes_path if logged_in?
  end

  def show
  end

  def edit
  end
end
