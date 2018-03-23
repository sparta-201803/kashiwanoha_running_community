class FashionsController < ApplicationController
  def index
  end

  def new
    @fashion = Fashion.new
  end

  def create
    @fashion = Fashion.new(fashion_params)
    @fashion.save
    puts @fashion.errors.full_messages
    redirect_to @fashion
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def fashion_params
    params.require(:fashion).permit(
      :image_url
      )
  end
end
