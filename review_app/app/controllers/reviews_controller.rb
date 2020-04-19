class ReviewsController < ApplicationController

    before_action :authorize, :only => [ :create]

    def index
        @products=Product.all
        @reviews=Review.all
    end

    def new
        @product=Product.new
        @user=User.new
        @review=Review.new
    end

    def create
        @review=Review.new(review_params)
        if @review.save
            redirect_to products_path
        else
            redirect_to products_path, alert:
            "You need to be signed in to write a review."
        end
    end

    def show 
        @review=Review.find(params[:id])
    end

    def edit 
        @review=Review.find(params[:id])
    end

    def update
        @review=Review.find(params[:id])
        if @review.update(review_params)
            redirect_to products_path
        else
            render 'edit'
        end
    end

    def destroy
        @review=Review.find(params[:id])
        @review.destroy
        redirect_to products_path, alert:
        "Review deleted."
    end

    private
    def review_params
        params.require(:review).permit(:user_id, :product_id, :author, :rating, :reviewcontent, :date)
    end

end
