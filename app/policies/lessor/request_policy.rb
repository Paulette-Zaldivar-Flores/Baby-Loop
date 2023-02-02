class Lessor::RequestPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # Gives us all the requests of the offers belonging to the lessor
      scope.joins(:offer).where(offer: { user: user })
      # SELECT requests.*
      # FROM requests
      # JOIN offers ON requests.offer_id = offers.id
      # WHERE offer.user_id = #{current_user.id}
    end
  end
end
