class AddressesController < ApplicationController
  def new
    @person = Address.new
  end

  def create
    Address.create(address_params)
    redirect_to address_path
  end

  def index
    @people = Address.all
  end

  private

  def address_params
    params.require(:person).permit(:name)
  end

  def find_address
    params.require(:address).permit(:street_address_1, :street_address_2, :city, :state, :zipcode, :address_type)
    #code
  end

end
