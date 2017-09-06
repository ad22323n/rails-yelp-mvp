class ReviewsController < ApplicationController
  # def new
  # end

  # def create
  # end
  def new
  	@restaurant = Restaurant.find(params[:restaurant_id])
  	@review = Review.new
  end

  def create
  	@review = Review.new(review_params)
  	@review.restaurant = Restaurant.find(params[:restaurant_id])
  	if @review.save
  	 redirect_to restaurant_path(@review)
  	else
  		render :new
  	end
  end 
# private 
  def review_params
      params.require(:review).permit(:content, :restaurant_id)
  end
end
