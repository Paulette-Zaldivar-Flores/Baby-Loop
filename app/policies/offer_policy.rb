class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def my_offers?
    true
  end

  ######## We currently don't have an edit option yet for our offers
  # def edit?
  #   update?
  # end

  # def update?
  #   ecord.user == user
  # end

  def destroy?
    record.user == user
  end
end
