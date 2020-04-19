class ProductsController < ApplicationController
    def index
        @products=Product.all
    end

    def new
        @product=Product.new
        @user=User.new
        @review=Review.new
    end

    def create
        @product=Product.new(product_params)
        if @product.save
            redirect_to products_path, notice:
            "Thank you for your product upload."
        else
            render 'new'
        end
    end

    def show 
        @product=Product.find(params[:id])
        @review=Review.find(params[:id])
    end

    private
    def product_params
        params.require(:product).permit(:user_id, :brand, :avgcost, :category, :releasedate, :description, :productphoto)
    end

end
