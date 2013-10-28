class Admin::ProductsController < Admin::BaseController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  def index
    @products = Product.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /products/1
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_product_url(@product), notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      redirect_to admin_product_url(@product), notice: 'Product was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
    redirect_to admin_products_path, notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:name,
                                      :permalink,
                                      :sku,
                                      :price,
                                      :cost,
                                      :description,
                                      :is_customizable,
                                      :customization,
                                      :active,
                                      :featured,
                                      :available_on,
                                      :deleted_at,
                                      :image,
                                      :category_ids => [])
    end
end