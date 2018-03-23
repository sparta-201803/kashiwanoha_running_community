class FashionsController < ApplicationController
  def index
    @fashions = Fashion.all
  end

  def new
    @fashion = Fashion.new
  end

  def create
    @fashion = Fashion.new(fashion_params)
    @fashion.user_id = 1
    @fashion.save
    puts @fashion.errors.full_messages
    redirect_to @fashion
  end

  def edit
    @fashion = Fashion.find(params[:id])
  end

  def update
    
  end

  def show
    @fashion = Fashion.find(params[:id])
  end

  def destroy
  end

  private

  def fashion_params
    params.require(:fashion).permit(
      :user_id,
      :description,
      :image_url
      )
  end
end
