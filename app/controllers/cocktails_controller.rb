class CocktailsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query OR content ILIKE :query"
      @cocktails = Cocktail.where(sql_query, query: "%#{params[:query]}%")
    else
      @cocktails = Cocktail.order(created_at: :desc)
    end

    @cocktail = Cocktail.new
    @review = @cocktail.reviews
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new

  end

  def new
    @cocktail = Cocktail.new
    @dose = Dose.new
    @ingredient = Ingredient.new


  end


  def create
    @cocktail = Cocktail.new(cocktail_params)
    # @dose = @cocktail.doses
    if @cocktail.save
      redirect_to @cocktail, notice: 'Your cocktail was created'
    else
      render :new
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:id])

  end

  def update
    @cocktail = Cocktail.find(params[:id])

    @cocktail.dose(cocktail_params)
    redirect_to cocktails_path
  end

  private

  def cocktail_params
     params.require(:cocktail).permit(:name, :content, :category, :doses, :photo)

    # params.require(:cocktail).permit(:name, :content, :doses, photo: [])
  end
end
