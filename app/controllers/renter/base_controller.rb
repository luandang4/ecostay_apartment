class Renter::BaseController < ApplicationController
  before_action :authenticate_user!, :renter_required
  layout "renter/main"

  def renter_required
    current_user.role.renter? || redirect_to("/")
  end
end
