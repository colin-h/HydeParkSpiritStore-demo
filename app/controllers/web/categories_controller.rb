module Web
  class CategoriesController < BaseController
    before_action :set_category, only: [:show]

    # GET /categories/1
    def show
      @products = @category.products
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def category_params
        params.require(:category).permit(:name)
      end
  end
end