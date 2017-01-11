class Admin::ProductsController < AdminController
  before_action :set_admin_product, only: [:show, :edit, :update, :destroy]

  # GET /admin/products
  # GET /admin/products.json
  def index
  # Showing the Category products
      @admin_products = Admin::Product.all
  end

  # GET /admin/products/1
  # GET /admin/products/1.json
  def show
  end

  # GET /admin/products/new
  def new
    @admin_product = Admin::Product.new
  end

  # GET /admin/products/1/edit
  def edit
  end

  # POST /admin/products
  # POST /admin/products.json
  def create
    @admin_product = Admin::Product.new(admin_product_params)

    respond_to do |format|
      if @admin_product.save
        format.html { redirect_to admin_products_path, notice: 'Product was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @admin_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/products/1
  # PATCH/PUT /admin/products/1.json
  def update
    respond_to do |format|
      if @admin_product.update(admin_product_params)
        format.html { redirect_to admin_products_path, notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @admin_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/products/1
  # DELETE /admin/products/1.json
  def destroy
    @admin_product = Admin::Product.find(params[:id])
    @admin_product.destroy

    redirect_to admin_products_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_product
      @admin_product = Admin::Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_product_params
      params.require(:admin_product).permit(:name, :price, :discounted_pric, :description, :avatar, category_ids: [])
    end
end
