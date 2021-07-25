class LinksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @link = Link.new
  end

  def create
  end

  private

  def link_params
    params.require(:link).permit(:long_url)
  end
end
