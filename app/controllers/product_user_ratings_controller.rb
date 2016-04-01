class ProductUserRatingsController < ApplicationController
  before_action :set_product_user_rating, only: [:show, :edit, :update, :destroy]

  # GET /product_user_ratings
  # GET /product_user_ratings.json
  def index
    @product_user_ratings = ProductUserRating.all
  end

  # GET /product_user_ratings/1
  # GET /product_user_ratings/1.json
  def show
  end

  # GET /product_user_ratings/new
  def new
    @product_user_rating = ProductUserRating.new
  end

  # GET /product_user_ratings/1/edit
  def edit
  end

  # POST /product_user_ratings
  # POST /product_user_ratings.json
  def create
    @product_user_rating = ProductUserRating.new(product_user_rating_params)

    respond_to do |format|
      if @product_user_rating.save
        format.html { redirect_to @product_user_rating.product, notice: 'Product user rating was successfully created.' }
        format.json { render :show, status: :created, location: @product_user_rating }
      else
        format.html { render :new }
        format.json { render json: @product_user_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_user_ratings/1
  # PATCH/PUT /product_user_ratings/1.json
  def update
    respond_to do |format|
      if @product_user_rating.update(product_user_rating_params)
        format.html { redirect_to @product_user_rating.product, notice: 'Product user rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_user_rating }
      else
        format.html { render :edit }
        format.json { render json: @product_user_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_user_ratings/1
  # DELETE /product_user_ratings/1.json
  def destroy
    @product_user_rating.destroy
    respond_to do |format|
      format.html { redirect_to product_user_ratings_url, notice: 'Product user rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_user_rating
      @product_user_rating = ProductUserRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_user_rating_params
      params.require(:product_user_rating).permit(:rating, :product_id, :user_id)
    end
end
