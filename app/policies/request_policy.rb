class RequestPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
  end

  def show
  end

  def new?
  end

  def create?
  end

  def edit?
  end

  def update?
  end

  def destroy
  end
end
