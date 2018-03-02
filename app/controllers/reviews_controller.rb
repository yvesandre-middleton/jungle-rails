class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      redirect_to @review.product
    else
      redirect_to @review.prouduct
    end
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to :back, notice: 'Review deleted!'
  end

  private


  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
