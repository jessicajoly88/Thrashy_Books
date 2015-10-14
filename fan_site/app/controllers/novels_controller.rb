class NovelsController < ApplicationController
  def index
    @novels = Novel.all
  end

  def show
    @novel = Novel.find(params[:id])
  end

  def new
    @novel = Novel.new
  end

  def create
    @novel = Novel.new(novel_params)
    @novel.rating = 0
    if @novel.save
      redirect_to novels_path
    else
      render :new
    end
  end

private
  def novel_params
    params.require(:novel).permit(:author, :title, :description)
  end

end
