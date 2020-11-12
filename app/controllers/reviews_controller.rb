class ReviewsController < ApplicationController


  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    @review.save
    redirect_to cocktail_path(@cocktail)



  end

  private

  # def find_cocktail
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  # end

  def review_params
    params.require(:review).permit(:content, :rating, :cocktail_id)
  end
end
