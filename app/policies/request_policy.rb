class RequestPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
  end

  def new?
    create?
  end

  def create?
    record.user == user
  end

  def update?
  end
end
