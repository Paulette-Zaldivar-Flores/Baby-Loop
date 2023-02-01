class Lessor::RequestPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    policy_scope([:lessor, Request])
    authorize([:lessor, @request])
  end
end
