class ReviewsController < ApplicationController

  def create
    ip = determine_ip
    @review = Review.new
    @review.ip = ip
    @review.review_text = params["review"]["review_text"]
    if @review.save
      flash[:notice] = "Thank You for your Review"
    else
      flash[:error] = "Review has not beed saved due to some error"
    end
    redirect_to root_path
  end

end
