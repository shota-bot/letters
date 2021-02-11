class LettersController < ApplicationController
  def index
    @shop = Shop.find(params[:shop_id])
    @letters = @shop.letters
  end

  def create
    @letter = Letter.new(letter_params)
    if @letter.save
      redirect_to shop_letters_path(@letter.shop_id)
    else
      @shop = Shop.find(params[:id])
      render "shops/show"
    end
  end

  private

  def letter_params
    params.require(:letter).permit(:shop_id, :content).merge(user_id: current_user.id)
  end
end
