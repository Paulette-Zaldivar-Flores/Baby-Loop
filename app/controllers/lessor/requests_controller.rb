class Lessor::RequestsController < ApplicationController
  def index
    @requests = policy_scope([:lessor, Request])
    @requests_per_offer = @requests.group_by { |request| request.offer }
    # Gives all requests grouped by offers; a hash with offers as key and and array of requests of this offer as value
    # Is the same as
    # @requests_per_offer = @requests.group_by(&:offer)
  end
end
# Anywhere but in the index
# authorize([:lessor, @request])
