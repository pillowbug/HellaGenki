class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]
  def index
    @show = Show.find(params[:show_id])
    # @characters = Character.where(@show.id == :show_id)
    @characters = @show.characters
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @show = Show.find(params[:show_id])
    @character = Character.new
  end

  def create
    @show = Show.find(params[:show_id])
    @character = Character.new(character_params)
    @character.show = @show
    @character.save!
    redirect_to show_characters_path
  end

  def edit
    @show = Show.find(params[:show_id])
  end

  def update
    # @show = Show.find(params[:show_id])
    @character = Character.update(character_params)
    redirect_to show_characters_path
  end

  def destroy
    @character.delete
    redirect_to show_characters_path
  end

  private

  def character_params
    params.require(:character).permit(:name, :description)
  end

  def set_character
    @character = Character.find(params[:id])
  end

end

# class ReviewsController < ApplicationController
#   def new
#     # we need @restaurant in our `simple_form_for`
#     @restaurant = Restaurant.find(params[:restaurant_id])
#     @review = Review.new
#   end

#   def create
#     @review = Review.new(review_params)
#     # we need `restaurant_id` to associate review with corresponding restaurant
#     @restaurant = Restaurant.find(params[:restaurant_id])
#     @review.restaurant = @restaurant
#     @review.save
#     redirect_to restaurant_path(@restaurant)
#   end

#   private

#   def review_params
#     params.require(:review).permit(:content)
#   end
# end
