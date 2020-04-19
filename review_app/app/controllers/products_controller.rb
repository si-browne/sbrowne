class ProductsController < ApplicationController
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
    end

    private
    def product_params
        params.require(:product).permit(:brand, :avgcost, :category, :releasedate, :description)
    end

end
