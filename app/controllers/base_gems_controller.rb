class BaseGemsController < ApplicationController
  respond_to :json

  def index
    respond_with BaseGem.all
  end

  def show
    respond_with BaseGem.find(params[:id])
  end

  def create
    respond_with BaseGem.create(params[:base_gem])
  end

  def update
    respond_with BaseGem.update(params[:id], params[:base_gem])
  end

  def destroy
    respond_with BaseGem.destroy(params[:id])
  end
end
