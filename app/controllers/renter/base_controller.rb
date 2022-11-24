class Renter::BaseController < ApplicationController
  before_action :renter_required

  def renter_required
    current_user.role.renter? || redirect_to("/")
  end
end
