class MunicipesController < ApplicationController

  def new
  end

  def create

  end

  def update
  end

  def show 
  end

  def index
  end

  private 

  def municipe_permit_params
    params.require(:municipes).permit(:full_name, :date_of_birthday, :cpf, :email, :uf, :cellphone, :status, address: [:street, :neighborhood, :number, :city_id, :state_id, :municipe_id])
  end
end
  