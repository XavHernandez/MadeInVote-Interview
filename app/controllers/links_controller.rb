class LinksController < ApplicationController
  def index
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to link_path(@link)
    else
      render :new
    end
  end

  def redirect
    shortcut = params[:shortcut]
    link = Link.find_by(short_url: shortcut)
    if link
      redirect_to link.long_url
    else
      redirect_to root_path
    end
  end

  private

  def link_params
    params.require(:link).permit(:long_url)
  end
end
