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

  def edit
    @novel = Novel.find(params[:id])
  end

  def update
    @novel = Novel.find(params[:id])
    if @novel.update(novel_params)
      redirect_to novels_path
    else
      render :edit
    end
  end

  def destroy
    @novel = Novel.find(params[:id])
    @novel.destroy
    redirect_to novels_path
  end

private
  def novel_params
    params.require(:novel).permit(:author, :title, :description)
  end

end
