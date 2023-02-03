class OffersController < ApplicationController
  before_action :set_offer, only: %i[show edit update destroy]

  def index
    @offers = policy_scope(Offer)
    @offer = Offer.new
  end

  # def my_offers
  #   @my_offers = Offer.where(user: current_user)
  #   authorize @my_offers
  # end

  def show
    authorize @offer
    @request = Request.new

    @marker = [{ lat: @offer.latitude, lng: @offer.longitude }]
  end

  def new
    @offer = Offer.new
    @offers = Offer.where(user: current_user)
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    authorize @offer

    if @offer.save
      redirect_to new_offer_path, notice: "Offer was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @offer
  end

  def update
    authorize @offer
    if @offer.update(offer_params)
      redirect_to offer_path(@offer), notice: "Offer was successfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @offer
    @offer.destroy
    redirect_to new_offer_path, notice: "Offer was successfully deleted."
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:item_name, :category, :description, :rate, :photo, :address)
  end
end
