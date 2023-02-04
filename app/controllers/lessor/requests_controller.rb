class Lessor::RequestsController < ApplicationController
  def index
    @requests = policy_scope([:lessor, Request])
    @requests_per_offer = @requests.group_by { |request| request.offer }
    # @requests = request.where (offer_id: =
    # Gives all requests grouped by offers; a hash with offers as key and and array of requests of this offer as value
    # Is the same as
    # @requests_per_offer = @requests.group_by(&:offer)
  end

  def update
    @request = Request.find(params[:id])
    authorize @request
    if @request.update(request_params)
      redirect_to lessor_requests_path
      # :back refreshes the page
    else
      flash.alert = "Could not complete the action."
    end
  end

  private

  def request_params
    # TODO: check your model, might be different than mine
    params.require(:request).permit(:status)
  end
end
