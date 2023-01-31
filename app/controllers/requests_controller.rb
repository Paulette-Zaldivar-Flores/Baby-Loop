class RequestsController < ApplicationController
  # before_action :set_request, only: %i[] #update destroy

  def index
    if current_user
      @user = current_user
      @requests = @user.requests
    else
      @requests = []
    end
  end

  def new
    @request = Request.new
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    @user = current_user
    @request.user = @user
    @offer = Offer.find(params[:offer_id])
    @request.offer = @offer
    @request.status = 0
    authorize @request

    if @request.save
      redirect_to requests_path, notice: 'Request submitted.'
      # Alternative redirect
      # redirect_to offer_path(@offer), notice: 'Request submitted.'
    else
      render 'offers/show'
    end
  end

  # def update
  #   authorize @request
  # end

  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:start_date, :end_date, :status)
  end
end
