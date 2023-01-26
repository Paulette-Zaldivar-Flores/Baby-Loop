class OffersController < ApplicationController
  before_action :set_offer, only: %i[show] #edit update destroy

  def show
    authorize @offer
    @request = Request.new
  end

  # TO BE MODIFIED
  # def index
  #   @offers = policy_scope(Offer).all
  # end

  # def new
  #   @offer = Offer.new
  #   authorize @restaurant
  # end

  # def create
  #   @offer = Offer.new(offer_params)
  #   @offer.user = current_user
  #   authorize @offer

  #   if @offer.save
  #     redirect_to @offer, notice: "Offer was successfully created."
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  ######## WE CURRENTLY DON'T HAVE AN EDIT OR DELETE OPTION FOR OUR OFFERS
  # def edit
  #   authorize @offer
  # end

  # def update
  #   authorize @offer
  #   if @offer.update(restaurant_params)
  #     redirect_to @offer, notice: "Offer was successfully updated"
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   authorize @offer
  #   @offer.destroy
  #   redirect_to :index, notice: "Restaurant was successfully destroyed."
  # end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  # def offer_params
  #   params.require(:offer).permit(:item_name, :category, :description, :rate)
  # end
end
