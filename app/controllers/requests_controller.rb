class RequestsController < ApplicationController
  before_action :set_request, only: %i[create] #update destroy

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @user = @current_user
    @request.user = @user
    @offer = Offer.find(params[:offer_id])
    @request.offer = @offer
    @request.status = 0
    if @request.save
      redirect_to offers_path, message: 'Request submitted.'
    else
      render 'offers/show'
    end
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:start_date, :end_date, :status)
  end
end
