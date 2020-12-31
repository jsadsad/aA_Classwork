class CatsController < ApplicationController

  def index 
    cats = Cat.all 
    render json: cats 
  end

  def show
    cat = Cat.find_by(id: params[:id])
  end

  def create
    cat = Cat.new(cat_params)

    if cat.save 
      render json: cat 
    else 
      render json: cat.errors.full_messages, status: :unprocessable_entity
    end
  end

  private 
    def cat_params 
      params.require(:cat).permit(:name, :birth_date, :color, :sex, :description)
    end
end