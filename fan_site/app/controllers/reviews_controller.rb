class ReviewsController < ApplicationController
  def new
    @novel = Novel.find(params[:novel_id])
    @review = @novel.reviews.new
  end

  def create
    @novel = Novel.find(params[:novel_id])
    @review = @novel.reviews.new(review_params)
    if @review.save
      redirect_to novel_path(@review.novel)
    else
      render :new
    end
  end

  def destroy
    @novel = Novel.find(params[:novel_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to novel_path(@novel)
  end


  private
    def review_params
      params.require(:review).permit(:user_name, :description)
    end

end
