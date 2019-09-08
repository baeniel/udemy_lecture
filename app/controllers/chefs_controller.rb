class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
