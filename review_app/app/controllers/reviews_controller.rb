class ReviewsController < ApplicationController
    def new
        @product=Product.new
        @user=User.new
        @review=Review.new
    end

    def create
        @review=Review.new(review_params)
        if @review.save
            redirect_to product_path, notice:
            "Thank you for your review."
        else
            render 'new'
        end
    end

    def show 
        @review=Review.find(params[:id])
        #@profile=Profile.find(params[:id])
    end

    private
    def review_params
        params.require(:review).permit(:author, :rating, :reviewcontent, :date)
    end

end
