module Web
  class ProductsController < BaseController
    helper_method :category

    def index
      @products = category.products
    end

    def show
      @product = category.products.find(params[:id])
    end

    private
      def category
        @category ||= Category.find(params[:category_id])
      end

      # Only allow a trusted parameter "white list" through.
      def product_params
        params.require(:product).permit(:name, :description, :permalink, :active, :available_at, :deleted_at, :category_ids => [])
      end
  end
end