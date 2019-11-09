class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit]

  def index
    @shows = Show.all
  end

  def show
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to show_path(@show)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @show = Show.update(show_params)
    redirect_to show_path(@show)
  end

  private

  def show_params
    params.require(:show).permit(:title, :release_year, :description)
  end

  def set_show
    @show = Show.find(params[:id])
  end

end
