class PizzaTypesController < ApplicationController
  def index
    @pizza_types = PizzaType.order(:name)
    respond_to do |format|
      format.html
      format.json { render json: @pizza_types }
    end
  end
end
