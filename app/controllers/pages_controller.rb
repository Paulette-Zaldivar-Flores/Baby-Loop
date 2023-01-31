class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # if current_user
    #   @user = current_user
    #   @requests = @user.requests
    # else
    #   @requests = []
    # end

    @offers = Offer.all[0..3]
  end
end
