class ProductsController < ApplicationController
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
        @product=Product.new(product_params)
        if @product.save
            redirect_to product_path, notice:
            "Thank you for your product upload."
        else
            render 'new'
        end
    end

    def show
        @product=Product.find(params[:id])
        @users=User.find(params[:id])
        @reviews=Review.where(product_id: params[:id])
    end

    private
    def product_params
        params.require(:product).permit(:user_id, :brand, :avgcost, :category, :releasedate, :description, :productphoto)
    end

end