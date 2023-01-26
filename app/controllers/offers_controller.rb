class OffersController < ApplicationController
  before_action :set_offer, only: %i[show create]

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offers_path, message: 'Offer created.'
    else
      render 'offers/show'
    end
  end

  def show; end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:item_name, :category, :rate, :description)
  end
end
